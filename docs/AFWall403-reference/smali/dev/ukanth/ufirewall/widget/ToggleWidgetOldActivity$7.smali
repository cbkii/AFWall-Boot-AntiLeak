.class Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$7;
.super Ljava/lang/Object;
.source "ToggleWidgetOldActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->disableDefault()V
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$7;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 450
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetdefaultButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 451
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetprofButton1()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 453
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetprofButton2()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 454
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetprofButton3()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
