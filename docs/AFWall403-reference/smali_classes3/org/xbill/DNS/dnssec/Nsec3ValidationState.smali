.class Lorg/xbill/DNS/dnssec/Nsec3ValidationState;
.super Ljava/lang/Object;
.source "Nsec3ValidationState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;
    }
.end annotation


# static fields
.field private static final b32:Lorg/xbill/DNS/utils/base32;


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field public numCalc:I

.field public numCalcErrors:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lorg/xbill/DNS/utils/base32;

    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUV="

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/xbill/DNS/utils/base32;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->b32:Lorg/xbill/DNS/utils/base32;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->cache:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()Lorg/xbill/DNS/utils/base32;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->b32:Lorg/xbill/DNS/utils/base32;

    return-object v0
.end method

.method private key(Lorg/xbill/DNS/NSEC3Record;Lorg/xbill/DNS/Name;)Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Lorg/xbill/DNS/NSEC3Record;->getHashAlgorithm()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Lorg/xbill/DNS/NSEC3Record;->getIterations()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Lorg/xbill/DNS/NSEC3Record;->getSalt()[B

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "-"

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/xbill/DNS/NSEC3Record;->getSalt()[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public computeIfAbsent(Lorg/xbill/DNS/NSEC3Record;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->key(Lorg/xbill/DNS/NSEC3Record;Lorg/xbill/DNS/Name;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->cache:Ljava/util/Map;

    .line 29
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;

    if-nez v1, :cond_0

    .line 31
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/NSEC3Record;->hashName(Lorg/xbill/DNS/Name;)[B

    move-result-object p1

    .line 32
    new-instance v1, Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;-><init>([B)V

    iget-object p1, p0, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->cache:Ljava/util/Map;

    .line 33
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    :cond_0
    return-object v1
.end method
