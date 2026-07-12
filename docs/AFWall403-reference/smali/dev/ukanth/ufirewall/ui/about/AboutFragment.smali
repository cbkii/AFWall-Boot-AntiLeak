.class public Ldev/ukanth/ufirewall/ui/about/AboutFragment;
.super Landroidx/fragment/app/Fragment;
.source "AboutFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private enhanceHTMLForModernUI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "<style"

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<style[^>]*>.*?</style>"

    const-string v1, "<style type=\'text/css\'>body { background: transparent; color: var(--md-sys-color-on-surface, #1C1B1F); font-family: \'Roboto\', sans-serif; font-size: 14px; line-height: 1.6; margin: 0; padding: 16px; } a { color: var(--md-sys-color-primary, #6750A4); text-decoration: none; } a:hover { text-decoration: underline; } div.block { margin-bottom: 16px; padding: 16px; background: var(--md-sys-color-surface-variant, #E7E0EC); border-radius: 8px; border-left: 4px solid var(--md-sys-color-primary, #6750A4); } div.block label { font-weight: 600; color: var(--md-sys-color-primary, #6750A4); display: block; margin-bottom: 8px; font-size: 15px; } div.block .span { color: var(--md-sys-color-on-surface-variant, #49454F); } #credits { margin: 0; padding: 0; } #credits li { list-style-type: none; font-weight: 500; color: var(--md-sys-color-on-surface, #1C1B1F); margin: 12px 0; padding: 8px 0; border-bottom: 1px solid var(--md-sys-color-outline-variant, #CAC4D0); } #credits li ul { margin: 8px 0 16px 16px; } #credits li ul li { font-weight: normal; color: var(--md-sys-color-on-surface-variant, #49454F); list-style-type: disc; border-bottom: none; margin: 4px 0; padding: 2px 0; } strong, b { color: var(--md-sys-color-primary, #6750A4); } i, em { color: var(--md-sys-color-secondary, #625B71); } </style>"

    .line 147
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "<head>"

    const-string v1, "<head><style type=\'text/css\'>body { background: transparent; color: var(--md-sys-color-on-surface, #1C1B1F); font-family: \'Roboto\', sans-serif; font-size: 14px; line-height: 1.6; margin: 0; padding: 16px; } a { color: var(--md-sys-color-primary, #6750A4); text-decoration: none; } a:hover { text-decoration: underline; } div.block { margin-bottom: 16px; padding: 16px; background: var(--md-sys-color-surface-variant, #E7E0EC); border-radius: 8px; border-left: 4px solid var(--md-sys-color-primary, #6750A4); } div.block label { font-weight: 600; color: var(--md-sys-color-primary, #6750A4); display: block; margin-bottom: 8px; font-size: 15px; } div.block .span { color: var(--md-sys-color-on-surface-variant, #49454F); } #credits { margin: 0; padding: 0; } #credits li { list-style-type: none; font-weight: 500; color: var(--md-sys-color-on-surface, #1C1B1F); margin: 12px 0; padding: 8px 0; border-bottom: 1px solid var(--md-sys-color-outline-variant, #CAC4D0); } #credits li ul { margin: 8px 0 16px 16px; } #credits li ul li { font-weight: normal; color: var(--md-sys-color-on-surface-variant, #49454F); list-style-type: disc; border-bottom: none; margin: 4px 0; padding: 2px 0; } strong, b { color: var(--md-sys-color-primary, #6750A4); } i, em { color: var(--md-sys-color-secondary, #625B71); } </style>"

    .line 149
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private loadCreditsContent(Landroid/view/View;)V
    .locals 8

    .line 51
    sget v0, Ldev/ukanth/ufirewall/R$id;->about_thirdsparty_credits:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/webkit/WebView;

    .line 54
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 56
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 59
    new-instance v0, Ldev/ukanth/ufirewall/ui/about/AboutFragment$1;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/ui/about/AboutFragment$1;-><init>(Ldev/ukanth/ufirewall/ui/about/AboutFragment;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 74
    :try_start_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/ui/about/AboutFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "about"

    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/Api;->loadData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/ui/about/AboutFragment;->enhanceHTMLForModernUI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    .line 77
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AFWall"

    const-string v2, "Error reading about file!"

    .line 79
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Unable to load about content"

    .line 81
    invoke-static {p1, v0, v7}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 31
    sget p3, Ldev/ukanth/ufirewall/R$layout;->help_about_content:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 40
    sget p2, Ldev/ukanth/ufirewall/R$id;->afwall_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Ldev/ukanth/ufirewall/R$string;->app_name:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/ui/about/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (v4.0.3)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/ui/about/AboutFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (Donate) "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Ldev/ukanth/ufirewall/R$string;->donate_thanks:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/ui/about/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " :)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/ui/about/AboutFragment;->loadCreditsContent(Landroid/view/View;)V

    return-void
.end method
