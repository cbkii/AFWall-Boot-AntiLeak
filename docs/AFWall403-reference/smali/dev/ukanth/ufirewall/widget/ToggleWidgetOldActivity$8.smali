.class Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$8;
.super Ljava/lang/Object;
.source "ToggleWidgetOldActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->disableCustom(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$8;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;

    iput-object p2, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$8;->val$code:Ljava/lang/String;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$8;->val$code:Ljava/lang/String;

    .line 463
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "AFWallProfile3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :pswitch_1
    const-string v1, "AFWallProfile2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_2
    const-string v1, "AFWallProfile1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 477
    :pswitch_3
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetdefaultButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 478
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetprofButton1()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 479
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetprofButton2()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 480
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetprofButton3()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 471
    :pswitch_4
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetdefaultButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 472
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetprofButton1()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 473
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetprofButton2()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 474
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetprofButton3()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 465
    :pswitch_5
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetdefaultButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 466
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetprofButton1()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 467
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetprofButton2()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 468
    invoke-static {}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->-$$Nest$sfgetprofButton3()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2dd7ba9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
