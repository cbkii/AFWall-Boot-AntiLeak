.class public Lorg/xbill/DNS/SVCBBase$ParameterPort;
.super Lorg/xbill/DNS/SVCBBase$ParameterBase;
.source "SVCBBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/SVCBBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterPort"
.end annotation


# instance fields
.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Lorg/xbill/DNS/SVCBBase$ParameterBase;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 338
    invoke-direct {p0}, Lorg/xbill/DNS/SVCBBase$ParameterBase;-><init>()V

    iput p1, p0, Lorg/xbill/DNS/SVCBBase$ParameterPort;->port:I

    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/SVCBBase$ParameterPort;->port:I

    return-void

    .line 363
    :cond_0
    new-instance p1, Lorg/xbill/DNS/TextParseException;

    const-string v0, "Integer value must be specified for port"

    invoke-direct {p1, v0}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromWire([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 354
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/SVCBBase$ParameterPort;->port:I

    .line 355
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 356
    :cond_0
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    const-string v0, "Unexpected number of bytes in port parameter"

    invoke-direct {p1, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getKey()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/SVCBBase$ParameterPort;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/SVCBBase$ParameterPort;->port:I

    .line 377
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toWire()[B
    .locals 2

    .line 370
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    iget v1, p0, Lorg/xbill/DNS/SVCBBase$ParameterPort;->port:I

    .line 371
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 372
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
