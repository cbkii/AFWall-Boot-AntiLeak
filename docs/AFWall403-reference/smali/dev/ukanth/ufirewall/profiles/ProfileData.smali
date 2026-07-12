.class public Ldev/ukanth/ufirewall/profiles/ProfileData;
.super Lcom/raizlabs/android/dbflow/structure/BaseModel;
.source "ProfileData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private attibutes:Ljava/lang/String;

.field id:J

.field private identifier:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parentProfile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/profiles/ProfileData;->name:Ljava/lang/String;

    iput-object p2, p0, Ldev/ukanth/ufirewall/profiles/ProfileData;->identifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ldev/ukanth/ufirewall/profiles/ProfileData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 80
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/ukanth/ufirewall/profiles/ProfileData;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/profiles/ProfileData;->clone()Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object v0

    return-object v0
.end method

.method public getAttibutes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/profiles/ProfileData;->attibutes:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Ldev/ukanth/ufirewall/profiles/ProfileData;->id:J

    return-wide v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/profiles/ProfileData;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/profiles/ProfileData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentProfile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/profiles/ProfileData;->parentProfile:Ljava/lang/String;

    return-object v0
.end method

.method public removeId()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldev/ukanth/ufirewall/profiles/ProfileData;->id:J

    return-void
.end method

.method public setAttibutes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/profiles/ProfileData;->attibutes:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/profiles/ProfileData;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/profiles/ProfileData;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentProfile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/profiles/ProfileData;->parentProfile:Ljava/lang/String;

    return-void
.end method
