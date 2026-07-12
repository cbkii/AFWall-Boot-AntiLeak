.class public Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;
.super Landroid/app/Activity;
.source "ToggleWidgetActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Close;,
        Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Status;,
        Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$EnableFirewall;,
        Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$DisableFirewall;,
        Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profiles;,
        Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profile3;,
        Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profile2;,
        Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profile1;,
        Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$DefaultProfile;,
        Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;
    }
.end annotation


# instance fields
.field private actionType:I

.field private pieMenu:Ldev/ukanth/ufirewall/widget/RadialMenuWidget;

.field private relativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetactionType(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)I
    .locals 0

    iget p0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->actionType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrelativeLayout(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactionType(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;I)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->actionType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrelativeLayout(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartAction(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->startAction(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->actionType:I

    return-void
.end method

.method private invokeAction()V
    .locals 3

    .line 458
    new-instance v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$1;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$1;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;Landroid/os/Looper;)V

    .line 466
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 467
    new-instance v2, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;

    invoke-direct {v2, p0, v1, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;Landroid/content/Context;Landroid/os/Handler;)V

    .line 549
    invoke-virtual {v2}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$2;->start()V

    return-void
.end method

.method private startAction(I)V
    .locals 1

    iput p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->actionType:I

    .line 448
    new-instance p1, Ldev/ukanth/ufirewall/util/SecurityUtil;

    invoke-direct {p1, p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;-><init>(Landroid/app/Activity;)V

    .line 449
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/util/SecurityUtil;->isPasswordProtected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->invokeAction()V

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/util/SecurityUtil;->passCheck()Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 414
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x4bc

    const/4 v0, -0x1

    if-eq p1, p3, :cond_2

    const/16 p3, 0x261b

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eq p2, v0, :cond_1

    .line 437
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->finish()V

    goto :goto_0

    .line 431
    :cond_1
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->invokeAction()V

    goto :goto_0

    :cond_2
    if-eq p2, v0, :cond_3

    .line 422
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->finish()V

    .line 423
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 419
    :cond_3
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->invokeAction()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget p1, Ldev/ukanth/ufirewall/R$layout;->toggle_widget_view:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->setContentView(I)V

    .line 43
    sget p1, Ldev/ukanth/ufirewall/R$id;->widgetCircle:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 44
    new-instance p1, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->pieMenu:Ldev/ukanth/ufirewall/widget/RadialMenuWidget;

    const-wide/16 v0, 0x0

    .line 46
    invoke-virtual {p1, v0, v1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->setAnimationSpeed(J)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 48
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 49
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->pieMenu:Ldev/ukanth/ufirewall/widget/RadialMenuWidget;

    .line 50
    invoke-virtual {v1, p1, v0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->setSourceLocation(II)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->pieMenu:Ldev/ukanth/ufirewall/widget/RadialMenuWidget;

    const/16 v0, 0xf

    const/16 v1, 0x1e

    .line 51
    invoke-virtual {p1, v0, v1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->setIconSize(II)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->pieMenu:Ldev/ukanth/ufirewall/widget/RadialMenuWidget;

    const/16 v0, 0xd

    .line 52
    invoke-virtual {p1, v0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->setTextSize(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->pieMenu:Ldev/ukanth/ufirewall/widget/RadialMenuWidget;

    .line 54
    new-instance v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Close;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Close;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)V

    invoke-virtual {p1, v1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->setCenterCircle(Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;)Z

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->pieMenu:Ldev/ukanth/ufirewall/widget/RadialMenuWidget;

    .line 55
    new-instance v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Status;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Status;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)V

    invoke-virtual {p1, v1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->addMenuEntry(Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;)Z

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->pieMenu:Ldev/ukanth/ufirewall/widget/RadialMenuWidget;

    .line 56
    new-instance v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$EnableFirewall;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$EnableFirewall;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)V

    invoke-virtual {p1, v1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->addMenuEntry(Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;)Z

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->pieMenu:Ldev/ukanth/ufirewall/widget/RadialMenuWidget;

    .line 57
    new-instance v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$DisableFirewall;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$DisableFirewall;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)V

    invoke-virtual {p1, v1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->addMenuEntry(Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;)Z

    .line 59
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->pieMenu:Ldev/ukanth/ufirewall/widget/RadialMenuWidget;

    .line 60
    new-instance v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profiles;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profiles;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)V

    invoke-virtual {p1, v1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->addMenuEntry(Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;)Z

    .line 63
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, -0x1

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->pieMenu:Ldev/ukanth/ufirewall/widget/RadialMenuWidget;

    .line 66
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
