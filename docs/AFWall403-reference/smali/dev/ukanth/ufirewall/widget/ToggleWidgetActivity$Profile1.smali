.class public Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profile1;
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
    name = "Profile1"
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profile1;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 322
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
    .locals 3

    .line 332
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profile1;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    sget v2, Ldev/ukanth/ufirewall/R$string;->profile1:I

    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile1"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "AFWallProfile1"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 324
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profile1;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    sget v2, Ldev/ukanth/ufirewall/R$string;->profile1:I

    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile1"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "AFWallProfile1"

    return-object v0
.end method

.method public menuActiviated()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profile1;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    const/4 v1, 0x4

    .line 348
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->-$$Nest$mstartAction(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;I)V

    return-void
.end method
