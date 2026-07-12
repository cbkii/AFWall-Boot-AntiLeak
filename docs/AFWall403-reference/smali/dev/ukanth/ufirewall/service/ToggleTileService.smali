.class public Ldev/ukanth/ufirewall/service/ToggleTileService;
.super Landroid/service/quicksettings/TileService;
.source "ToggleTileService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .line 62
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    const-string v0, "AFWallStatus"

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "Enabled"

    const/4 v3, 0x1

    .line 66
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v3

    .line 69
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->protectionLevel()Ljava/lang/String;

    move-result-object v2

    const-string v4, "p0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableDeviceCheck()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ldev/ukanth/ufirewall/service/ToggleTileService;)Landroid/service/quicksettings/Tile;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v2, Ldev/ukanth/ufirewall/R$string;->toast_enabled:I

    .line 79
    invoke-virtual {v0, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setSuccessToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    sget v2, Ldev/ukanth/ufirewall/R$string;->toast_error_enabling:I

    .line 80
    invoke-virtual {v0, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    new-instance v2, Ldev/ukanth/ufirewall/service/ToggleTileService$1;

    invoke-direct {v2, p0, p0, v1}, Ldev/ukanth/ufirewall/service/ToggleTileService$1;-><init>(Ldev/ukanth/ufirewall/service/ToggleTileService;Landroid/content/Context;Landroid/service/quicksettings/Tile;)V

    .line 82
    invoke-virtual {v0, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    .line 78
    invoke-static {p0, v3, v0}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_0

    .line 97
    :cond_1
    new-instance v0, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v2, Ldev/ukanth/ufirewall/R$string;->toast_disabled:I

    .line 98
    invoke-virtual {v0, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setSuccessToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    sget v2, Ldev/ukanth/ufirewall/R$string;->toast_error_disabling:I

    .line 99
    invoke-virtual {v0, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    new-instance v2, Ldev/ukanth/ufirewall/service/ToggleTileService$2;

    invoke-direct {v2, p0, p0, v1}, Ldev/ukanth/ufirewall/service/ToggleTileService$2;-><init>(Ldev/ukanth/ufirewall/service/ToggleTileService;Landroid/content/Context;Landroid/service/quicksettings/Tile;)V

    .line 101
    invoke-virtual {v0, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    .line 97
    invoke-static {p0, v3, v0}, Ldev/ukanth/ufirewall/Api;->purgeIptables(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    :cond_2
    :goto_0
    return-void

    .line 70
    :cond_3
    :goto_1
    sget v0, Ldev/ukanth/ufirewall/R$string;->widget_disable_fail:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 22
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    return-void
.end method

.method public onStartListening()V
    .locals 2

    .line 37
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 38
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 39
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ldev/ukanth/ufirewall/service/ToggleTileService;)Landroid/service/quicksettings/Tile;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 42
    sget v0, Ldev/ukanth/ufirewall/R$string;->inactive:I

    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ldev/ukanth/ufirewall/service/ToggleTileService;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/quicksettings/Tile;Ljava/lang/CharSequence;)V

    .line 43
    sget v0, Ldev/ukanth/ufirewall/R$drawable;->notification_error:I

    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/quicksettings/Tile;Landroid/graphics/drawable/Icon;)V

    const/4 v0, 0x1

    .line 44
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/quicksettings/Tile;I)V

    goto :goto_0

    .line 46
    :cond_0
    sget v0, Ldev/ukanth/ufirewall/R$string;->active:I

    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ldev/ukanth/ufirewall/service/ToggleTileService;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/quicksettings/Tile;Ljava/lang/CharSequence;)V

    .line 47
    sget v0, Ldev/ukanth/ufirewall/R$drawable;->notification:I

    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/quicksettings/Tile;Landroid/graphics/drawable/Icon;)V

    const/4 v0, 0x2

    .line 48
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/quicksettings/Tile;I)V

    .line 50
    :goto_0
    invoke-static {v1}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/quicksettings/Tile;)V

    :cond_1
    return-void
.end method

.method public onStopListening()V
    .locals 0

    .line 56
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    return-void
.end method

.method public onTileAdded()V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    return-void
.end method

.method public onTileRemoved()V
    .locals 0

    .line 32
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    return-void
.end method
