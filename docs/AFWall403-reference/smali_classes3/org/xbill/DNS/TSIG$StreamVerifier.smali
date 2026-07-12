.class public Lorg/xbill/DNS/TSIG$StreamVerifier;
.super Ljava/lang/Object;
.source "TSIG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/TSIG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamVerifier"
.end annotation


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private final key:Lorg/xbill/DNS/TSIG;

.field private lastsigned:I

.field private nresponses:I

.field private final queryTsig:Lorg/xbill/DNS/TSIGRecord;

.field private final sharedHmac:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 0

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    .line 881
    invoke-static {p1}, Lorg/xbill/DNS/TSIG;->access$000(Lorg/xbill/DNS/TSIG;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->sharedHmac:Ljavax/crypto/Mac;

    const/4 p1, 0x0

    iput p1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    iput-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->queryTsig:Lorg/xbill/DNS/TSIGRecord;

    return-void
.end method

.method private addUnsignedMessageToMac(Lorg/xbill/DNS/Message;[BLjavax/crypto/Mac;)V
    .locals 5

    .line 969
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v0

    .line 970
    invoke-static {}, Lorg/xbill/DNS/TSIG;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 971
    invoke-static {}, Lorg/xbill/DNS/TSIG;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "TSIG-HMAC header"

    invoke-static {v2, v0}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 974
    :cond_0
    invoke-virtual {p3, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 975
    array-length v1, p2

    array-length v2, v0

    sub-int/2addr v1, v2

    .line 976
    invoke-static {}, Lorg/xbill/DNS/TSIG;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 977
    invoke-static {}, Lorg/xbill/DNS/TSIG;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "TSIG-HMAC message after header"

    array-length v4, v0

    invoke-static {v3, p2, v4, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 980
    :cond_1
    array-length v0, v0

    invoke-virtual {p3, p2, v0, v1}, Ljavax/crypto/Mac;->update([BII)V

    const/4 p2, 0x2

    .line 981
    iput p2, p1, Lorg/xbill/DNS/Message;->tsigState:I

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public verify(Lorg/xbill/DNS/Message;[B)I
    .locals 1

    const/4 v0, 0x0

    .line 903
    invoke-virtual {p0, p1, p2, v0}, Lorg/xbill/DNS/TSIG$StreamVerifier;->verify(Lorg/xbill/DNS/Message;[BZ)I

    move-result p1

    return p1
.end method

.method public verify(Lorg/xbill/DNS/Message;[BZ)I
    .locals 11

    .line 921
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    iget v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    const/4 v3, 0x4

    const-string v4, "FORMERR: {}"

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v5, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    iget-object v8, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->queryTsig:Lorg/xbill/DNS/TSIGRecord;

    const/4 v9, 0x1

    iget-object v10, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->sharedHmac:Ljavax/crypto/Mac;

    move-object v6, p1

    move-object v7, p2

    .line 930
    invoke-static/range {v5 .. v10}, Lorg/xbill/DNS/TSIG;->access$300(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;ZLjavax/crypto/Mac;)I

    move-result p1

    iget-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->sharedHmac:Ljavax/crypto/Mac;

    .line 931
    invoke-static {p2, v0}, Lorg/xbill/DNS/TSIG;->access$200(Ljavax/crypto/Mac;Lorg/xbill/DNS/TSIGRecord;)V

    iget p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    iput p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    return p1

    :cond_0
    const-string p2, "missing required signature on first message"

    iput-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->errorMessage:Ljava/lang/String;

    .line 936
    invoke-static {}, Lorg/xbill/DNS/TSIG;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    iget-object p3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->errorMessage:Ljava/lang/String;

    invoke-interface {p2, v4, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 937
    iput v3, p1, Lorg/xbill/DNS/Message;->tsigState:I

    return v2

    :cond_1
    if-eqz v0, :cond_2

    iget-object v5, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->sharedHmac:Ljavax/crypto/Mac;

    move-object v6, p1

    move-object v7, p2

    .line 943
    invoke-static/range {v5 .. v10}, Lorg/xbill/DNS/TSIG;->access$300(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;ZLjavax/crypto/Mac;)I

    move-result p1

    iget p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    iput p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    iget-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->sharedHmac:Ljavax/crypto/Mac;

    .line 945
    invoke-static {p2, v0}, Lorg/xbill/DNS/TSIG;->access$200(Ljavax/crypto/Mac;Lorg/xbill/DNS/TSIGRecord;)V

    return p1

    :cond_2
    iget v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    sub-int/2addr v1, v0

    const/16 v0, 0x64

    if-lt v1, v0, :cond_3

    .line 950
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Missing required signature on message #"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->errorMessage:Ljava/lang/String;

    .line 951
    invoke-static {}, Lorg/xbill/DNS/TSIG;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    iget-object p3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->errorMessage:Ljava/lang/String;

    invoke-interface {p2, v4, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 952
    iput v3, p1, Lorg/xbill/DNS/Message;->tsigState:I

    return v2

    :cond_3
    if-eqz p3, :cond_4

    const-string p2, "Missing required signature on last message"

    iput-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->errorMessage:Ljava/lang/String;

    .line 956
    invoke-static {}, Lorg/xbill/DNS/TSIG;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    iget-object p3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->errorMessage:Ljava/lang/String;

    invoke-interface {p2, v4, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 957
    iput v3, p1, Lorg/xbill/DNS/Message;->tsigState:I

    return v2

    .line 960
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Intermediate message #"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " without signature"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->errorMessage:Ljava/lang/String;

    .line 961
    invoke-static {}, Lorg/xbill/DNS/TSIG;->access$400()Lorg/slf4j/Logger;

    move-result-object p3

    iget-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->errorMessage:Ljava/lang/String;

    invoke-interface {p3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->sharedHmac:Ljavax/crypto/Mac;

    .line 962
    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/TSIG$StreamVerifier;->addUnsignedMessageToMac(Lorg/xbill/DNS/Message;[BLjavax/crypto/Mac;)V

    const/4 p1, 0x0

    return p1
.end method
