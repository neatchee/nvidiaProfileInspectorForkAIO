using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.NetworkInformation;
using System.Net;
using System.Reflection;
using System.Windows.Forms;

namespace DmW
{
    class DmWcode
    {
        public static bool CheckForInternetConnection()
        {
            try
            {
                Ping myPing = new Ping();
                String host = "github.com";
                byte[] buffer = new byte[32];
                int timeout = 1000;
                PingOptions pingOptions = new PingOptions();
                PingReply reply = myPing.Send(host, timeout, buffer, pingOptions);
                return (reply.Status == IPStatus.Success);
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static string CheckForNewVersion()
        {
            try
            {
                using (WebClient client = new WebClient())
                {
                    string s = client.DownloadString("https://raw.githubusercontent.com/DeadManWalkingTO/NVidiaProfileInspectorDmW/master/version");
                    return s;
                }
            }
            catch (Exception)
            {
                return "";
            }
        }

        public static string DmWassemblyVersion()
        {
            
            string assemblyVersion = "v" + Assembly.GetExecutingAssembly().GetName().Version.ToString();
            return assemblyVersion;
        }

        public static string DmWgitVersion()
        {
            string v = CheckForNewVersion();
            string GitVersion = v.Substring(0, DmWassemblyVersion().Length);
            return GitVersion;
        }

        public static bool NewVersion()
        {
            bool InetCon = CheckForInternetConnection();
            if (InetCon)
            {
                if (DmWassemblyVersion().Equals(DmWgitVersion())) { return false; } else { return true; };
            }
            else
            {
                return false;
            }
        }

        public static void NewVersionDownload()
        {
            if (NewVersion())
            {
                string msg = "New version is avaible : " + DmWgitVersion() + Environment.NewLine + "Current version: " + DmWassemblyVersion() + Environment.NewLine + "Download new version?";
                DialogResult dialogResult = MessageBox.Show(msg, "New version", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    System.Diagnostics.Process.Start("https://github.com/DeadManWalkingTO/NVidiaProfileInspectorDmW/releases/latest");
                }
                else if (dialogResult == DialogResult.No)
                {
                    //do nothing
                }   
            }
        }
    }
}
