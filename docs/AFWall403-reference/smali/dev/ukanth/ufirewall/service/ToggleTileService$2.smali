.class Ldev/ukanth/ufirewall/service/ToggleTileService$2;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "ToggleTileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/service/ToggleTileService;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/service/ToggleTileService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tile:Landroid/service/quicksettings/Tile;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/service/ToggleTileService;Landroid/content/Context;Landroid/service/quicksettings/Tile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/ToggleTileService$2;->this$0:Ldev/ukanth/ufirewall/service/ToggleTileService;

    iput-object p2, p0, Ldev/ukanth/ufirewall/service/ToggleTileService$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Ldev/ukanth/ufirewall/service/ToggleTileService$2;->val$tile:Landroid/service/quicksettings/Tile;

    .line 101
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/service/ToggleTileService$2;->val$context:Landroid/content/Context;

    .line 104
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v1, p1, v0}, Ldev/ukanth/ufirewall/Api;->setEnabled(Landroid/content/Context;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "AFWall"

    .line 106
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/service/ToggleTileService$2;->val$tile:Landroid/service/quicksettings/Tile;

    .line 108
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/quicksettings/Tile;I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/service/ToggleTileService$2;->val$tile:Landroid/service/quicksettings/Tile;

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/ToggleTileService$2;->this$0:Ldev/ukanth/ufirewall/service/ToggleTileService;

    .line 109
    sget v1, Ldev/ukanth/ufirewall/R$string;->inactive:I

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ldev/ukanth/ufirewall/service/ToggleTileService;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/quicksettings/Tile;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/service/ToggleTileService$2;->val$tile:Landroid/service/quicksettings/Tile;

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/ToggleTileService$2;->val$context:Landroid/content/Context;

    .line 110
    sget v1, Ldev/ukanth/ufirewall/R$drawable;->notification_error:I

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/quicksettings/Tile;Landroid/graphics/drawable/Icon;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/service/ToggleTileService$2;->val$tile:Landroid/service/quicksettings/Tile;

    .line 111
    invoke-static {p1}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/service/quicksettings/Tile;)V

    return-void
.end method
