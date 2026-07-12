.class public Ldev/ukanth/ufirewall/activity/StartActivity;
.super Ldev/ukanth/ufirewall/activity/BaseActivity;
.source "StartActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Ldev/ukanth/ufirewall/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ldev/ukanth/ufirewall/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 24
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/StartActivity;->finish()V

    return-void
.end method
