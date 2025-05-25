using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Analyser
    {
        public partial class Default : Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    lblResult.Text = "";
                }
            }

            protected void btnAnalyze_Click(object sender, EventArgs e)
            {
                string choice = rbImageChoice.SelectedValue;

                if (string.IsNullOrEmpty(choice))
                {
                    lblResult.Text = "⚠️ Please select an image to reveal your personality!";
                    return;
                }

                switch (choice)
                {
                    case "Sunset":
                        lblResult.Text = "🌇 You are calm and appreciate the beauty in life.";
                        break;
                    case "Ocean":
                        lblResult.Text = "🌊 You are deep, emotional, and adventurous.";
                        break;
                    case "Forest":
                        lblResult.Text = "🌳 You are peaceful, grounded, and connected to nature.";
                        break;
                    case "Mountain":
                        lblResult.Text = "🏔️ You are strong, patient, and love solitude.";
                        break;
                    case "Galaxy":
                        lblResult.Text = "🌌 You are imaginative and think beyond boundaries.";
                        break;
                    default:
                        lblResult.Text = "Unknown selection.";
                        break;
                }

            }

            protected void btnReset_Click(object sender, EventArgs e)
            {
                rbImageChoice.ClearSelection();
                lblResult.Text = "";
            }
        }
    }