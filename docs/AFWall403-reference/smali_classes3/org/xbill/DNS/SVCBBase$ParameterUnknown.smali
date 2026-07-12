.class public Lorg/xbill/DNS/SVCBBase$ParameterUnknown;
.super Lorg/xbill/DNS/SVCBBase$ParameterBase;
.source "SVCBBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/SVCBBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterUnknown"
.end annotation


# instance fields
.field private final key:I

.field private value:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 646
    invoke-direct {p0}, Lorg/xbill/DNS/SVCBBase$ParameterBase;-><init>()V

    iput p1, p0, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;->key:I

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;->value:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 652
    invoke-direct {p0}, Lorg/xbill/DNS/SVCBBase$ParameterBase;-><init>()V

    iput p1, p0, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;->key:I

    iput-object p2, p0, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;->value:[B

    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 673
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    invoke-static {p1}, Lorg/xbill/DNS/Record;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;->value:[B

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;->value:[B

    :goto_1
    return-void
.end method

.method public fromWire([B)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;->value:[B

    return-void
.end method

.method public getKey()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;->key:I

    return v0
.end method

.method public getValue()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;->value:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;->value:[B

    const/4 v1, 0x0

    .line 687
    invoke-static {v0, v1}, Lorg/xbill/DNS/Record;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toWire()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;->value:[B

    return-object v0
.end method
