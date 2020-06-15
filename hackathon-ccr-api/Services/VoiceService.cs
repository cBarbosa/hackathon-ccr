namespace hackathon.ccr.Services
{
    public static class VoiceService
    {

        public static string GetByPhone(int phone)
        {
            return Data.VoiceDAO.Query(phone);
        }

        public static bool PostTextByPhone(int phone, string text)
        {
            return Data.VoiceDAO.Save(phone, text).Equals(0)
                ? true
                : false;
        }
    }
}