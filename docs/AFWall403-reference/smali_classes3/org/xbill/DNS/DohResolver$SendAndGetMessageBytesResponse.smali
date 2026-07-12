.class final Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;
.super Ljava/lang/Object;
.source "DohResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/DohResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SendAndGetMessageBytesResponse"
.end annotation


# instance fields
.field private final rc:I

.field private final responseBytes:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->rc:I

    iput-object p2, p0, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->responseBytes:[B

    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;)I
    .locals 0

    .line 354
    iget p0, p0, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->rc:I

    return p0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;)[B
    .locals 0

    .line 354
    iget-object p0, p0, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->responseBytes:[B

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 353
    :cond_0
    instance-of v1, p1, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;

    invoke-virtual {p0}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->getRc()I

    move-result v1

    invoke-virtual {p1}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->getRc()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->getResponseBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->getResponseBytes()[B

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getRc()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->rc:I

    return v0
.end method

.method public getResponseBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->responseBytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 353
    invoke-virtual {p0}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->getRc()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->getResponseBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DohResolver.SendAndGetMessageBytesResponse(rc="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->getRc()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", responseBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/xbill/DNS/DohResolver$SendAndGetMessageBytesResponse;->getResponseBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
