.class public Lorg/xbill/DNS/SVCBBase$ParameterEch;
.super Lorg/xbill/DNS/SVCBBase$ParameterBase;
.source "SVCBBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/SVCBBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterEch"
.end annotation


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 464
    invoke-direct {p0}, Lorg/xbill/DNS/SVCBBase$ParameterBase;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 468
    invoke-direct {p0}, Lorg/xbill/DNS/SVCBBase$ParameterBase;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/SVCBBase$ParameterEch;->data:[B

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

    .line 488
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    invoke-static {p1}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/SVCBBase$ParameterEch;->data:[B

    return-void

    .line 489
    :cond_0
    new-instance p1, Lorg/xbill/DNS/TextParseException;

    const-string v0, "Non-empty base64 value must be specified for ech"

    invoke-direct {p1, v0}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromWire([B)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/SVCBBase$ParameterEch;->data:[B

    return-void
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SVCBBase$ParameterEch;->data:[B

    return-object v0
.end method

.method public getKey()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SVCBBase$ParameterEch;->data:[B

    .line 501
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toWire()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SVCBBase$ParameterEch;->data:[B

    return-object v0
.end method
