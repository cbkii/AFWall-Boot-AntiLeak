.class public Lorg/xbill/DNS/TSIG;
.super Ljava/lang/Object;
.source "TSIG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/TSIG$StreamVerifier;,
        Lorg/xbill/DNS/TSIG$StreamGenerator;
    }
.end annotation


# static fields
.field public static final FUDGE:Ljava/time/Duration;

.field public static final GSS_TSIG:Lorg/xbill/DNS/Name;

.field public static final HMAC:Lorg/xbill/DNS/Name;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HMAC_MD5:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA1:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA224:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA256:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA384:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA512:Lorg/xbill/DNS/Name;

.field private static final algMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/xbill/DNS/Name;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final alg:Lorg/xbill/DNS/Name;

.field private final clock:Ljava/time/Clock;

.field private final macAlgorithm:Ljava/lang/String;

.field private final macKey:Ljavax/crypto/SecretKey;

.field private final name:Lorg/xbill/DNS/Name;

.field private final sharedHmac:Ljavax/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lorg/xbill/DNS/TSIG;

    .line 30
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->log:Lorg/slf4j/Logger;

    const-string v0, "gss-tsig."

    .line 35
    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->GSS_TSIG:Lorg/xbill/DNS/Name;

    const-string v0, "HMAC-MD5.SIG-ALG.REG.INT."

    .line 38
    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC:Lorg/xbill/DNS/Name;

    const-string v1, "hmac-sha1."

    .line 48
    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    const-string v2, "hmac-sha224."

    .line 51
    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    sput-object v2, Lorg/xbill/DNS/TSIG;->HMAC_SHA224:Lorg/xbill/DNS/Name;

    const-string v3, "hmac-sha256."

    .line 54
    invoke-static {v3}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v3

    sput-object v3, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    const-string v4, "hmac-sha384."

    .line 57
    invoke-static {v4}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v4

    sput-object v4, Lorg/xbill/DNS/TSIG;->HMAC_SHA384:Lorg/xbill/DNS/Name;

    const-string v5, "hmac-sha512."

    .line 60
    invoke-static {v5}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v5

    sput-object v5, Lorg/xbill/DNS/TSIG;->HMAC_SHA512:Lorg/xbill/DNS/Name;

    .line 65
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "HmacMD5"

    .line 66
    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HmacSHA1"

    .line 67
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HmacSHA224"

    .line 68
    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HmacSHA256"

    .line 69
    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HmacSHA384"

    .line 70
    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HmacSHA512"

    .line 71
    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->algMap:Ljava/util/Map;

    const-wide/16 v0, 0x12c

    .line 129
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->FUDGE:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    .line 318
    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 303
    invoke-static {p1}, Lorg/xbill/DNS/TSIG;->algorithmToName(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;Lorg/xbill/DNS/Name;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->sharedHmac:Ljavax/crypto/Mac;

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->macAlgorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->macKey:Ljavax/crypto/SecretKey;

    .line 240
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/Clock;

    move-result-object p2

    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->clock:Ljava/time/Clock;

    .line 241
    invoke-virtual {p1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xbill/DNS/TSIG;->algorithmToName(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    invoke-static {p3}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object p3

    if-eqz p3, :cond_0

    .line 271
    :try_start_0
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p2, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p2

    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 276
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/Clock;

    move-result-object p2

    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->clock:Ljava/time/Clock;

    .line 277
    invoke-static {p1}, Lorg/xbill/DNS/TSIG;->nameToAlgorithm(Lorg/xbill/DNS/Name;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->macAlgorithm:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->sharedHmac:Ljavax/crypto/Mac;

    .line 279
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p2, p3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->macKey:Ljavax/crypto/SecretKey;

    return-void

    .line 273
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid TSIG key name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid TSIG key string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/lang/String;)V
    .locals 0

    .line 184
    invoke-static {p3}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljavax/crypto/SecretKey;)V
    .locals 1

    .line 206
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/Clock;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljavax/crypto/SecretKey;Ljava/time/Clock;)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljavax/crypto/SecretKey;Ljava/time/Clock;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    iput-object p4, p0, Lorg/xbill/DNS/TSIG;->clock:Ljava/time/Clock;

    .line 221
    invoke-static {p1}, Lorg/xbill/DNS/TSIG;->nameToAlgorithm(Lorg/xbill/DNS/Name;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->macAlgorithm:Ljava/lang/String;

    iput-object p3, p0, Lorg/xbill/DNS/TSIG;->macKey:Ljavax/crypto/SecretKey;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->sharedHmac:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V
    .locals 2

    .line 195
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lorg/xbill/DNS/TSIG;->nameToAlgorithm(Lorg/xbill/DNS/Name;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;[B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    .line 254
    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V

    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/TSIG;)Ljavax/crypto/Mac;
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->initHmac()Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;ZLjavax/crypto/Mac;)Lorg/xbill/DNS/TSIGRecord;
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p6}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;ZLjavax/crypto/Mac;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljavax/crypto/Mac;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lorg/xbill/DNS/TSIG;->hmacAddSignature(Ljavax/crypto/Mac;Lorg/xbill/DNS/TSIGRecord;)V

    return-void
.end method

.method static synthetic access$300(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;ZLjavax/crypto/Mac;)I
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;ZLjavax/crypto/Mac;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/TSIG;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static algorithmToName(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 2

    if-eqz p0, :cond_2

    const-string v0, "HMAC-MD5"

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HMAC-MD5."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/xbill/DNS/TSIG;->algMap:Ljava/util/Map;

    .line 96
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Set;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/TSIG$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/TSIG$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/TSIG$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/TSIG$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-static {v0, v1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Optional;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/Name;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    return-object p0

    .line 84
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null algorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/TSIG;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "[:/]"

    const/4 v1, 0x3

    .line 333
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 334
    array-length v0, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-ne v0, v1, :cond_0

    .line 338
    new-instance v0, Lorg/xbill/DNS/TSIG;

    aget-object v1, p0, v3

    aget-object v2, p0, v2

    aget-object p0, p0, v4

    invoke-direct {v0, v1, v2, p0}, Lorg/xbill/DNS/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 340
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid TSIG key specification"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 336
    :cond_1
    new-instance v0, Lorg/xbill/DNS/TSIG;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    aget-object v3, p0, v3

    aget-object p0, p0, v2

    invoke-direct {v0, v1, v3, p0}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;ZLjavax/crypto/Mac;)Lorg/xbill/DNS/TSIGRecord;
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v11, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    .line 398
    invoke-direct {p0, v11, v2}, Lorg/xbill/DNS/TSIG;->getTimeSigned(ILorg/xbill/DNS/TSIGRecord;)Ljava/time/Instant;

    move-result-object v7

    .line 399
    invoke-static {}, Lorg/xbill/DNS/TSIG;->getTsigFudge()Ljava/time/Duration;

    move-result-object v8

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    .line 403
    invoke-static {v3, v2}, Lorg/xbill/DNS/TSIG;->hmacAddSignature(Ljavax/crypto/Mac;Lorg/xbill/DNS/TSIGRecord;)V

    :cond_1
    if-eqz v5, :cond_3

    sget-object v2, Lorg/xbill/DNS/TSIG;->log:Lorg/slf4j/Logger;

    .line 408
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "TSIG-HMAC rendered message"

    .line 409
    invoke-static {v6, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 411
    :cond_2
    invoke-virtual {v3, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 416
    :cond_3
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    if-eqz p5, :cond_4

    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    .line 418
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    const/16 v2, 0xff

    .line 419
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    const-wide/16 v9, 0x0

    .line 420
    invoke-virtual {v1, v9, v10}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 421
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 424
    :cond_4
    invoke-static {v7, v8, v1}, Lorg/xbill/DNS/TSIG;->writeTsigTimerVariables(Ljava/time/Instant;Ljava/time/Duration;Lorg/xbill/DNS/DNSOutput;)V

    if-eqz p5, :cond_5

    .line 426
    invoke-virtual {v1, v11}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 427
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    :cond_5
    if-eqz v5, :cond_7

    .line 432
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    sget-object v2, Lorg/xbill/DNS/TSIG;->log:Lorg/slf4j/Logger;

    .line 433
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "TSIG-HMAC variables"

    .line 434
    invoke-static {v4, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 436
    :cond_6
    invoke-virtual {v3, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    goto :goto_1

    :cond_7
    new-array v1, v4, [B

    :goto_1
    move-object v9, v1

    const/16 v1, 0x12

    if-ne v11, v1, :cond_8

    .line 443
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lorg/xbill/DNS/DNSOutput;-><init>(I)V

    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->clock:Ljava/time/Clock;

    .line 444
    invoke-static {v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xbill/DNS/TSIG;->writeTsigTime(Ljava/time/Instant;Lorg/xbill/DNS/DNSOutput;)V

    .line 445
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    move-object v12, v1

    .line 448
    new-instance v13, Lorg/xbill/DNS/TSIGRecord;

    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v3, 0xff

    const-wide/16 v4, 0x0

    iget-object v6, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 456
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getID()I

    move-result v10

    move-object v1, v13

    move/from16 v11, p3

    invoke-direct/range {v1 .. v12}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/time/Instant;Ljava/time/Duration;[BII[B)V

    return-object v13
.end method

.method private getTimeSigned(ILorg/xbill/DNS/TSIGRecord;)Ljava/time/Instant;
    .locals 1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 462
    invoke-virtual {p2}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/xbill/DNS/TSIG;->clock:Ljava/time/Clock;

    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static getTsigFudge()Ljava/time/Duration;
    .locals 2

    const-string v0, "tsigfudge"

    .line 466
    invoke-static {v0}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    .line 467
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lorg/xbill/DNS/TSIG;->FUDGE:Ljava/time/Duration;

    :goto_1
    return-object v0
.end method

.method private static getTsigVariables(ZLorg/xbill/DNS/TSIGRecord;)[B
    .locals 3

    .line 679
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    if-eqz p0, :cond_0

    .line 681
    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 682
    iget v1, p1, Lorg/xbill/DNS/TSIGRecord;->dclass:I

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 683
    iget-wide v1, p1, Lorg/xbill/DNS/TSIGRecord;->ttl:J

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 684
    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 686
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getFudge()Ljava/time/Duration;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/xbill/DNS/TSIG;->writeTsigTimerVariables(Ljava/time/Instant;Ljava/time/Duration;Lorg/xbill/DNS/DNSOutput;)V

    if-eqz p0, :cond_2

    .line 688
    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 689
    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 690
    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 691
    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 693
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 697
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object p0

    sget-object p1, Lorg/xbill/DNS/TSIG;->log:Lorg/slf4j/Logger;

    .line 698
    invoke-interface {p1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "TSIG-HMAC variables"

    .line 699
    invoke-static {v0, p0}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method

.method private static hmacAddSignature(Ljavax/crypto/Mac;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 4

    .line 767
    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lorg/xbill/DNS/DNSOutput;->toU16(I)[B

    move-result-object v0

    sget-object v1, Lorg/xbill/DNS/TSIG;->log:Lorg/slf4j/Logger;

    .line 768
    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TSIG-HMAC signature size"

    .line 769
    invoke-static {v2, v0}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const-string v2, "TSIG-HMAC signature"

    .line 770
    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 773
    :cond_0
    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 774
    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-void
.end method

.method private initHmac()Ljavax/crypto/Mac;
    .locals 3

    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->sharedHmac:Ljavax/crypto/Mac;

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {v0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->sharedHmac:Ljavax/crypto/Mac;

    .line 159
    invoke-virtual {v0}, Ljavax/crypto/Mac;->reset()V

    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->sharedHmac:Ljavax/crypto/Mac;

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->macAlgorithm:Ljava/lang/String;

    .line 165
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->macKey:Ljavax/crypto/SecretKey;

    .line 166
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Caught security exception setting up HMAC."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$algorithmToName$0(Ljava/lang/String;Lorg/xbill/DNS/Name;)Z
    .locals 2

    .line 97
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/Name;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic lambda$algorithmToName$1(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 106
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$algorithmToName$2(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$algorithmToName$3(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 2

    sget-object v0, Lorg/xbill/DNS/TSIG;->algMap:Ljava/util/Map;

    .line 105
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Set;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/TSIG$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/TSIG$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/TSIG$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lorg/xbill/DNS/TSIG$$ExternalSyntheticLambda12;-><init>()V

    .line 107
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/TSIG$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/TSIG$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Optional;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/Name;

    return-object p0
.end method

.method public static nameToAlgorithm(Lorg/xbill/DNS/Name;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/xbill/DNS/TSIG;->algMap:Ljava/util/Map;

    .line 121
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;ZLjavax/crypto/Mac;)I
    .locals 8

    const/4 v0, 0x4

    .line 619
    iput v0, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 620
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 625
    :cond_0
    invoke-virtual {v1}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    iget-object v4, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v3

    iget-object v7, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v7}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    if-nez p5, :cond_2

    .line 637
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->initHmac()Ljavax/crypto/Mac;

    move-result-object p5

    :cond_2
    if-eqz p3, :cond_3

    .line 640
    invoke-virtual {v1}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-virtual {v1}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v0

    const/16 v3, 0x10

    if-eq v0, v3, :cond_3

    .line 641
    invoke-static {p5, p3}, Lorg/xbill/DNS/TSIG;->hmacAddSignature(Ljavax/crypto/Mac;Lorg/xbill/DNS/TSIGRecord;)V

    .line 644
    :cond_3
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p3

    invoke-virtual {p3, v6}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 645
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p3

    invoke-virtual {p3}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object p3

    .line 646
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/Header;->incCount(I)V

    sget-object v0, Lorg/xbill/DNS/TSIG;->log:Lorg/slf4j/Logger;

    .line 647
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "TSIG-HMAC header"

    .line 648
    invoke-static {v3, p3}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 650
    :cond_4
    invoke-virtual {p5, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 652
    iget v3, p1, Lorg/xbill/DNS/Message;->tsigstart:I

    array-length v4, p3

    sub-int/2addr v3, v4

    .line 653
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "TSIG-HMAC message after header"

    .line 654
    array-length v6, p3

    invoke-static {v4, p2, v6, v3}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 656
    :cond_5
    array-length p3, p3

    invoke-virtual {p5, p2, p3, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 658
    invoke-static {p4, v1}, Lorg/xbill/DNS/TSIG;->getTsigVariables(ZLorg/xbill/DNS/TSIGRecord;)[B

    move-result-object p2

    .line 659
    invoke-virtual {p5, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 661
    invoke-virtual {v1}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object p2

    .line 662
    invoke-static {p5, p2}, Lorg/xbill/DNS/TSIG;->verifySignature(Ljavax/crypto/Mac;[B)I

    move-result p2

    if-eqz p2, :cond_6

    return p2

    .line 669
    :cond_6
    invoke-direct {p0, v1}, Lorg/xbill/DNS/TSIG;->verifyTime(Lorg/xbill/DNS/TSIGRecord;)I

    move-result p2

    if-eqz p2, :cond_7

    return p2

    .line 674
    :cond_7
    iput v2, p1, Lorg/xbill/DNS/Message;->tsigState:I

    return v5

    :cond_8
    :goto_0
    sget-object p2, Lorg/xbill/DNS/TSIG;->log:Lorg/slf4j/Logger;

    const/4 p3, 0x5

    new-array p3, p3, [Ljava/lang/Object;

    .line 628
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/Header;->getID()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v5

    iget-object p1, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    aput-object p1, p3, v2

    const/4 p1, 0x2

    iget-object p4, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    aput-object p4, p3, p1

    .line 631
    invoke-virtual {v1}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    aput-object p1, p3, v6

    .line 632
    invoke-virtual {v1}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "BADKEY failure on message id {}, expected: {}/{}, actual: {}/{}"

    .line 626
    invoke-interface {p2, p1, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method private static verify([B[B)Z
    .locals 3

    .line 146
    array-length v0, p1

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 147
    array-length v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 148
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v1

    .line 151
    :cond_0
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private static verifySignature(Ljavax/crypto/Mac;[B)I
    .locals 5

    .line 705
    invoke-virtual {p0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    .line 710
    div-int/lit8 v1, v0, 0x2

    const/16 v2, 0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 711
    array-length v2, p1

    const/16 v3, 0x10

    if-le v2, v0, :cond_0

    sget-object p0, Lorg/xbill/DNS/TSIG;->log:Lorg/slf4j/Logger;

    .line 713
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "BADSIG: signature too long, expected: {}, actual: {}"

    .line 712
    invoke-interface {p0, v1, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v3

    .line 715
    :cond_0
    array-length v2, p1

    const/4 v4, 0x0

    if-ge v2, v1, :cond_1

    sget-object p0, Lorg/xbill/DNS/TSIG;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 718
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const/4 v1, 0x1

    .line 719
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    array-length p1, p1

    .line 720
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string p1, "BADSIG: signature too short, expected: {} of {}, actual: {}"

    .line 716
    invoke-interface {p0, p1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 723
    :cond_1
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    .line 724
    invoke-static {p0, p1}, Lorg/xbill/DNS/TSIG;->verify([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/xbill/DNS/TSIG;->log:Lorg/slf4j/Logger;

    .line 725
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 728
    invoke-static {p0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object p0

    .line 729
    invoke-static {p1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "BADSIG: signature verification failed, expected: {}, actual: {}"

    .line 726
    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return v3

    :cond_3
    return v4
.end method

.method private verifyTime(Lorg/xbill/DNS/TSIGRecord;)I
    .locals 4

    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->clock:Ljava/time/Clock;

    .line 738
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object v0

    .line 739
    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v1

    .line 740
    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getFudge()Ljava/time/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;Ljava/time/Duration;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    sget-object v1, Lorg/xbill/DNS/TSIG;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    .line 744
    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/time/Instant;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v0, 0x2

    .line 745
    invoke-virtual {p1}, Lorg/xbill/DNS/TSIGRecord;->getFudge()Ljava/time/Duration;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "BADTIME failure, now {} +/- tsig {} > fudge {}"

    .line 741
    invoke-interface {v1, p1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x12

    return p1

    :cond_0
    return v2
.end method

.method private static writeTsigTime(Ljava/time/Instant;Lorg/xbill/DNS/DNSOutput;)V
    .locals 4

    .line 783
    invoke-static {p0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Instant;)J

    move-result-wide v0

    const/16 p0, 0x20

    shr-long v2, v0, p0

    long-to-int p0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 786
    invoke-virtual {p1, p0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 787
    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    return-void
.end method

.method private static writeTsigTimerVariables(Ljava/time/Instant;Ljava/time/Duration;Lorg/xbill/DNS/DNSOutput;)V
    .locals 0

    .line 778
    invoke-static {p0, p2}, Lorg/xbill/DNS/TSIG;->writeTsigTime(Ljava/time/Instant;Lorg/xbill/DNS/DNSOutput;)V

    .line 779
    invoke-static {p1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;)J

    move-result-wide p0

    long-to-int p1, p0

    invoke-virtual {p2, p1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    return-void
.end method


# virtual methods
.method public apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 1

    const/4 v0, 0x1

    .line 488
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;Z)V

    return-void
.end method

.method public apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;Z)V
    .locals 6

    .line 517
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;Z)Lorg/xbill/DNS/TSIGRecord;

    move-result-object p2

    const/4 p3, 0x3

    .line 518
    invoke-virtual {p1, p2, p3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 519
    iput p3, p1, Lorg/xbill/DNS/Message;->tsigState:I

    return-void
.end method

.method public apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 477
    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;Z)V

    return-void
.end method

.method public apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 502
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;Z)V

    return-void
.end method

.method public applyStream(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 534
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;Z)V

    return-void
.end method

.method public generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 354
    invoke-virtual/range {v0 .. v5}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;Z)Lorg/xbill/DNS/TSIGRecord;

    move-result-object p1

    return-object p1
.end method

.method public generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;Z)Lorg/xbill/DNS/TSIGRecord;
    .locals 8

    if-eqz p3, :cond_1

    const/16 v0, 0x12

    if-eq p3, v0, :cond_1

    const/16 v0, 0x16

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 375
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->initHmac()Ljavax/crypto/Mac;

    move-result-object v0

    :goto_1
    move-object v7, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 378
    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;ZLjavax/crypto/Mac;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object p1

    return-object p1
.end method

.method public recordLength()I
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    .line 757
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 759
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x26

    return v0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 556
    invoke-virtual {p0, p1, p2, p4}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I
    .locals 1

    const/4 v0, 0x1

    .line 575
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;Z)I

    move-result p1

    return p1
.end method

.method public verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;Z)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 598
    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;ZLjavax/crypto/Mac;)I

    move-result p1

    return p1
.end method
