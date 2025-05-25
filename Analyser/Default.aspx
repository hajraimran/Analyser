<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Analyser.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personality Analyzer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .image-option {
            cursor: pointer;
            transition: transform 0.3s ease-in-out;
        }
        .image-option:hover {
            transform: scale(1.1);
            border: 3px solid #007bff;
        }
        .selected-img {
            border: 4px solid #28a745 !important;
        }
    </style>
    <script>
        function highlightSelection(rblId) {
            const images = document.querySelectorAll(`#${rblId} input[type="radio"]`);
            images.forEach(img => {
                img.parentElement.classList.remove("selected-img");
                if (img.checked) {
                    img.parentElement.classList.add("selected-img");
                }
            });
        }
    </script>
</head>
<body class="bg-light">
    <form id="form1" runat="server" class="container py-5">
        <div class="text-center mb-4">
            <h2 class="text-primary">Personality Analyzer</h2>
            <h3>new change commit</h3>
            <p class="lead">Select the image that attracts you first. Your visual choice reveals hidden traits!</p>
        </div>

        <asp:RadioButtonList ID="rbImageChoice" runat="server" CssClass="d-flex flex-wrap justify-content-center gap-3"
            RepeatDirection="Horizontal" AutoPostBack="false">
            <asp:ListItem Value="Sunset" Text="<img class='image-option img-thumbnail' src='https://via.placeholder.com/150/FF5733/FFFFFF?text=Sunset' onclick='highlightSelection(&quot;rbImageChoice&quot;)' />" />
            <asp:ListItem Value="Ocean" Text="<img class='image-option img-thumbnail' src='https://via.placeholder.com/150/4286f4/FFFFFF?text=Ocean' onclick='highlightSelection(&quot;rbImageChoice&quot;)' />" />
            <asp:ListItem Value="Forest" Text="<img class='image-option img-thumbnail' src='https://via.placeholder.com/150/33ff77/000000?text=Forest' onclick='highlightSelection(&quot;rbImageChoice&quot;)' />" />
            <asp:ListItem Value="Mountain" Text="<img class='image-option img-thumbnail' src='https://via.placeholder.com/150/FFD700/000000?text=Mountain' onclick='highlightSelection(&quot;rbImageChoice&quot;)' />" />
            <asp:ListItem Value="Galaxy" Text="<img class='image-option img-thumbnail' src='https://via.placeholder.com/150/800080/FFFFFF?text=Galaxy' onclick='highlightSelection(&quot;rbImageChoice&quot;)' />" />
        </asp:RadioButtonList>

        <div class="text-center mt-4">
            <asp:Button ID="btnAnalyze" runat="server" Text="Analyze Personality" CssClass="btn btn-success me-2" OnClick="btnAnalyze_Click" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-secondary" OnClick="btnReset_Click" />
        </div>

        <div class="text-center mt-4">
            <asp:Label ID="lblResult" runat="server" CssClass="fw-bold fs-5 text-dark"></asp:Label>
        </div>
    </form>
</body>
</html>
