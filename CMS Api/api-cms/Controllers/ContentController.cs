﻿using CMS_API.ConfigurationDB;
using CMS_API.Library;
using CMS_API.Object;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Data.SqlClient;
using static api_cms.Object.Content;
using static api_cms.Object.Section;
using static CMS_API.Library.GeneralLib;
using static CMS_API.Object.Log;

namespace api_cms.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ContentController : ControllerBase
    {
        [HttpGet]
        public GeneralResponseData<List<ListContents>> GetAll()
        {
            #region Intansiasi Object
            GeneralResponseData<List<ListContents>> ObjResponseListContents = new GeneralResponseData<List<ListContents>>();
            List<ListContents> ObjListContents = new List<ListContents>();

            WriteFileLogResult writeFileLogResult = new WriteFileLogResult();
            string strMethod = this.HttpContext.Request.Method;
            string strControllerName = this.ControllerContext.RouteData.Values["controller"].ToString();
            #endregion

            #region FlowControl
            try
            {
                string connectionString = HabakuDB.ConnectionStrings.HABAKU_CONNECTION;
                string query = HabakuDB.Query.SELECT_ALL_CONTENT;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        connection.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                ObjListContents.Add(new ListContents
                                {
                                    content_id = reader.GetInt32(reader.GetOrdinal("content_id")),
                                    section_id = reader.GetInt32(reader.GetOrdinal("section_id")),
                                    header = reader.GetString(reader.GetOrdinal("header")),
                                    title = reader.GetString(reader.GetOrdinal("title")),
                                    description = reader.GetString(reader.GetOrdinal("description")),
                                    image = reader.GetString(reader.GetOrdinal("image")),
                                    url = reader.GetString(reader.GetOrdinal("url"))
                                });
                            }
                        }
                    }
                }

                ObjResponseListContents = new GeneralResponseData<List<ListContents>>
                {
                    Code = GeneralLib.Constan.CONST_RES_CD_SUCCESS,
                    Messages = GeneralLib.Constan.CONST_RES_MESSAGE_SUCCESS,
                    Data = ObjListContents
                };

            }
            catch (Exception ex)
            {
                ObjResponseListContents.Code = GeneralLib.Constan.CONST_RES_CD_ERROR;
                ObjResponseListContents.Messages = GeneralLib.Constan.CONST_RES_MESSAGE_ERROR + ex.Message;

                throw;
            }
            #endregion

            #region Create Log File

            //create log file
            writeFileLogResult.id = GenerateUniqueID();
            writeFileLogResult.result = ObjResponseListContents;
            writeFileLogResult.param = null;
            writeFileLogResult.trxDate = GetDateFormatDate();
            writeFileLogResult.trxTime = GetDateFormatTime();
            //writeFileLogResult.paramExt = strJSONObj;

            WriteFileLog.Write(JsonConvert.SerializeObject(writeFileLogResult), strControllerName, ObjResponseListContents.Code, strMethod);

            #endregion

            return ObjResponseListContents;
        }
    }
}