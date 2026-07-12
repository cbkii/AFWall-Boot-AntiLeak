.class public Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profiles;
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
    name = "Profiles"
.end annotation


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;


# direct methods
.method public constructor <init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profiles;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profiles;->children:Ljava/util/List;

    .line 215
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    new-instance v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$DefaultProfile;

    invoke-direct {v1, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$DefaultProfile;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profile1;

    invoke-direct {v1, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profile1;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profile2;

    invoke-direct {v1, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profile2;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profile3;

    invoke-direct {v1, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profile3;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getAdditionalProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    new-instance v2, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;

    invoke-direct {v2, p1, v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;Ljava/lang/String;)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profiles;->children:Ljava/util/List;

    .line 222
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_0
    new-instance v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$DefaultProfile;

    invoke-direct {v1, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$DefaultProfile;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-static {}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    .line 227
    new-instance v2, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$GenericProfile;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;Ljava/lang/String;)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profiles;->children:Ljava/util/List;

    .line 228
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
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

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profiles;->children:Ljava/util/List;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profiles;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 201
    sget v1, Ldev/ukanth/ufirewall/R$string;->profiles:I

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity$Profiles;->this$0:Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;

    .line 197
    sget v1, Ldev/ukanth/ufirewall/R$string;->profiles:I

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public menuActiviated()V
    .locals 0

    return-void
.end method
