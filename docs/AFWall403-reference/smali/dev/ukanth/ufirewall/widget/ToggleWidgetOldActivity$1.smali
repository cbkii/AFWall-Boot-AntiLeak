.class Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$1;
.super Landroid/os/Handler;
.source "ToggleWidgetOldActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->runProfile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$1;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

    .line 215
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 217
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$1;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

    .line 218
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
