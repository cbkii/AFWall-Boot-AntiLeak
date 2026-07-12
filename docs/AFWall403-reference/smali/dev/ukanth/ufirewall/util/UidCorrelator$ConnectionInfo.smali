.class public Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;
.super Ljava/lang/Object;
.source "UidCorrelator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/UidCorrelator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionInfo"
.end annotation


# instance fields
.field public final localAddress:Ljava/lang/String;

.field public final localPort:I

.field public final protocol:Ljava/lang/String;

.field public final remoteAddress:Ljava/lang/String;

.field public final remotePort:I

.field public final timestamp:J

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->uid:I

    iput-object p2, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->localAddress:Ljava/lang/String;

    iput-object p3, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->remoteAddress:Ljava/lang/String;

    iput p4, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->localPort:I

    iput p5, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->remotePort:I

    iput-object p6, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->protocol:Ljava/lang/String;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->timestamp:J

    return-void
.end method


# virtual methods
.method public getConnectionKey()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->remoteAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->remotePort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
