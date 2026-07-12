.class public Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Close;
.super Ljava/lang/Object;
.source "ToggleWidgetActivity.java"

# interfaces
.implements Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Close"
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;


# direct methods
.method public constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Close;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    const v0, 0x1080038

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Close"

    return-object v0
.end method

.method public menuActiviated()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Close;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 90
    sget v1, Ldev/ukanth/ufirewall/R$id;->widgetCircle:I

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->-$$Nest$fputrelativeLayout(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;Landroid/widget/RelativeLayout;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Close;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 91
    invoke-static {v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->-$$Nest$fgetrelativeLayout(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Close;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 92
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->finish()V

    return-void
.end method
