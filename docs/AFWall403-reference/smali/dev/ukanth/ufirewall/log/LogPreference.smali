.class public Ldev/ukanth/ufirewall/log/LogPreference;
.super Lcom/raizlabs/android/dbflow/structure/BaseModel;
.source "LogPreference.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private disable:Z

.field private skip:Z

.field private skipInterval:J

.field private timestamp:J

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogPreference;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipInterval()J
    .locals 2

    iget-wide v0, p0, Ldev/ukanth/ufirewall/log/LogPreference;->skipInterval:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Ldev/ukanth/ufirewall/log/LogPreference;->timestamp:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Ldev/ukanth/ufirewall/log/LogPreference;->uid:I

    return v0
.end method

.method public isDisable()Z
    .locals 1

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/log/LogPreference;->disable:Z

    return v0
.end method

.method public isSkip()Z
    .locals 1

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/log/LogPreference;->skip:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogPreference;->appName:Ljava/lang/String;

    return-void
.end method

.method public setDisable(Z)V
    .locals 0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/log/LogPreference;->disable:Z

    return-void
.end method

.method public setSkip(Z)V
    .locals 0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/log/LogPreference;->skip:Z

    return-void
.end method

.method public setSkipInterval(J)V
    .locals 0

    iput-wide p1, p0, Ldev/ukanth/ufirewall/log/LogPreference;->skipInterval:J

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Ldev/ukanth/ufirewall/log/LogPreference;->timestamp:J

    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/log/LogPreference;->uid:I

    return-void
.end method
