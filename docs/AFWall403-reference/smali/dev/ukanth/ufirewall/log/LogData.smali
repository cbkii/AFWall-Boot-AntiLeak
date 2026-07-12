.class public Ldev/ukanth/ufirewall/log/LogData;
.super Lcom/raizlabs/android/dbflow/structure/BaseModel;
.source "LogData.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private count:J

.field private dpt:I

.field private dst:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field id:J

.field private in:Ljava/lang/String;

.field private len:I

.field private out:Ljava/lang/String;

.field private proto:Ljava/lang/String;

.field private spt:I

.field private src:Ljava/lang/String;

.field private timestamp:J

.field private type:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogData;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Ldev/ukanth/ufirewall/log/LogData;->count:J

    return-wide v0
.end method

.method public getDpt()I
    .locals 1

    iget v0, p0, Ldev/ukanth/ufirewall/log/LogData;->dpt:I

    return v0
.end method

.method public getDst()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogData;->dst:Ljava/lang/String;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogData;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getIn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogData;->in:Ljava/lang/String;

    return-object v0
.end method

.method public getLen()I
    .locals 1

    iget v0, p0, Ldev/ukanth/ufirewall/log/LogData;->len:I

    return v0
.end method

.method public getOut()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogData;->out:Ljava/lang/String;

    return-object v0
.end method

.method public getProto()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogData;->proto:Ljava/lang/String;

    return-object v0
.end method

.method public getSpt()I
    .locals 1

    iget v0, p0, Ldev/ukanth/ufirewall/log/LogData;->spt:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogData;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Ldev/ukanth/ufirewall/log/LogData;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Ldev/ukanth/ufirewall/log/LogData;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Ldev/ukanth/ufirewall/log/LogData;->uid:I

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogData;->appName:Ljava/lang/String;

    return-void
.end method

.method public setCount(J)V
    .locals 0

    iput-wide p1, p0, Ldev/ukanth/ufirewall/log/LogData;->count:J

    return-void
.end method

.method public setDpt(I)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/log/LogData;->dpt:I

    return-void
.end method

.method public setDst(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogData;->dst:Ljava/lang/String;

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogData;->hostname:Ljava/lang/String;

    return-void
.end method

.method public setIn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogData;->in:Ljava/lang/String;

    return-void
.end method

.method public setLen(I)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/log/LogData;->len:I

    return-void
.end method

.method public setOut(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogData;->out:Ljava/lang/String;

    return-void
.end method

.method public setProto(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogData;->proto:Ljava/lang/String;

    return-void
.end method

.method public setSpt(I)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/log/LogData;->spt:I

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogData;->src:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Ldev/ukanth/ufirewall/log/LogData;->timestamp:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/log/LogData;->type:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/log/LogData;->uid:I

    return-void
.end method
