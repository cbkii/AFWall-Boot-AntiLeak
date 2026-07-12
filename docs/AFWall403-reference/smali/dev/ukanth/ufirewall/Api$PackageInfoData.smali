.class public final Ldev/ukanth/ufirewall/Api$PackageInfoData;
.super Ljava/lang/Object;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageInfoData"
.end annotation


# instance fields
.field public appType:I

.field public appinfo:Landroid/content/pm/ApplicationInfo;

.field public cached_icon:Landroid/graphics/drawable/Drawable;

.field public firstseen:Z

.field public icon_loaded:Z

.field public installTime:J

.field public names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pkgName:Ljava/lang/String;

.field public selected_3g:Z

.field public selected_lan:Z

.field public selected_roam:Z

.field public selected_tether:Z

.field public selected_tor:Z

.field public selected_vpn:Z

.field public selected_wifi:Z

.field public tostr:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    .line 4464
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    .line 4465
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4470
    invoke-static {p1}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/Api$PackageInfoData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 4476
    :cond_0
    instance-of v1, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 4480
    :cond_1
    check-cast p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 4482
    iget v1, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    iget v3, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    if-ne v1, v3, :cond_2

    iget-object p1, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    .line 4483
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appinfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const/16 v1, 0x20f

    .line 4490
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    .line 4493
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->tostr:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 4503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    .line 4505
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    .line 4506
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    .line 4507
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "\n"

    .line 4509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->tostr:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->tostr:Ljava/lang/String;

    return-object v0
.end method

.method public toStringWithUID()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->tostr:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 4517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    .line 4519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ] "

    .line 4520
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    .line 4521
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    .line 4522
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    .line 4523
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "\n"

    .line 4525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->tostr:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->tostr:Ljava/lang/String;

    return-object v0
.end method
