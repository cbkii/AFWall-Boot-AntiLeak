.class public Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;
.super Lcom/raizlabs/android/dbflow/structure/BaseModel;
.source "DefaultConnectionPref.java"


# instance fields
.field private connectionType:Ljava/lang/String;

.field private modeType:I

.field private state:Z

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getModeType()I
    .locals 1

    iget v0, p0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->modeType:I

    return v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->uid:I

    return v0
.end method

.method public isState()Z
    .locals 1

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->state:Z

    return v0
.end method

.method public setConnectionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->connectionType:Ljava/lang/String;

    return-void
.end method

.method public setModeType(I)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->modeType:I

    return-void
.end method

.method public setState(Z)V
    .locals 0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->state:Z

    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;->uid:I

    return-void
.end method
