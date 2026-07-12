.class public Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$DisableFirewall;
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
    name = "DisableFirewall"
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$DisableFirewall;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 171
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

    const/4 v0, 0x0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$DisableFirewall;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 177
    sget v1, Ldev/ukanth/ufirewall/R$string;->disable:I

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public menuActiviated()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$DisableFirewall;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    const/4 v1, 0x2

    .line 189
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->-$$Nest$fputactionType(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;I)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$DisableFirewall;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 190
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->-$$Nest$mstartAction(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;I)V

    return-void
.end method
