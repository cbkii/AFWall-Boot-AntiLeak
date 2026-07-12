.class public Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;
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
    name = "GenericProfile"
.end annotation


# instance fields
.field private final profileName:Ljava/lang/String;

.field final synthetic this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;


# direct methods
.method static bridge synthetic -$$Nest$fgetprofileName(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;->profileName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;->profileName:Ljava/lang/String;

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
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method public menuActiviated()V
    .locals 3

    .line 261
    new-instance v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$1;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$1;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 267
    invoke-virtual {v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 268
    new-instance v2, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;

    invoke-direct {v2, p0, v1, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;Landroid/content/Context;Landroid/os/Handler;)V

    .line 296
    invoke-virtual {v2}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile$2;->start()V

    return-void
.end method
