.class final Lorg/xbill/DNS/dnssec/NSEC3ValUtils;
.super Ljava/lang/Object;
.source "NSEC3ValUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;
    }
.end annotation


# static fields
.field private static final ASTERISK_LABEL:Lorg/xbill/DNS/Name;

.field private static final MAX_ITERATION_COUNT:I = 0x10000

.field private static final MAX_NSEC3_CALCULATIONS:I = 0x8

.field private static final MAX_NSEC3_ERRORS:I = -0x1

.field public static final NSEC3_MAX_ITERATIONS_PROPERTY_PREFIX:Ljava/lang/String; = "dnsjava.dnssec.nsec3.iterations"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final maxIterations:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;

    .line 39
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v0, "*"

    .line 43
    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->ASTERISK_LABEL:Lorg/xbill/DNS/Name;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->maxIterations:Ljava/util/TreeMap;

    const/16 v1, 0x400

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x96

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x800

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1000

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private ceWildcard(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1

    :try_start_0
    sget-object v0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->ASTERISK_LABEL:Lorg/xbill/DNS/Name;

    .line 151
    invoke-static {v0, p1}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p1
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private findClosestEncloser(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/Name;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;",
            "Lorg/xbill/DNS/dnssec/Nsec3ValidationState;",
            ")",
            "Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;"
        }
    .end annotation

    .line 295
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 296
    iget v0, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    iget v0, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 301
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->findMatchingNSEC3(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    new-instance p2, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;

    invoke-direct {p2, p1, v0, v2}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/NSEC3Record;Lorg/xbill/DNS/dnssec/NSEC3ValUtils$1;)V

    return-object p2

    .line 306
    :cond_1
    new-instance v0, Lorg/xbill/DNS/Name;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    move-object p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string p2, "NSEC3 reached max. hash calculations"

    .line 297
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_3
    return-object v2
.end method

.method private findCoveringNSEC3(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/NSEC3Record;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/Name;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;",
            "Lorg/xbill/DNS/dnssec/Nsec3ValidationState;",
            ")",
            "Lorg/xbill/DNS/NSEC3Record;"
        }
    .end annotation

    .line 253
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/dnssec/SRRset;

    .line 255
    iget v2, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    .line 256
    iget p1, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalcErrors:I

    iget p2, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    if-ne p1, p2, :cond_1

    const/4 p1, -0x1

    .line 257
    iput p1, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    :cond_1
    return-object v1

    .line 264
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/NSEC3Record;

    .line 265
    invoke-virtual {p4, v1, p1}, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->computeIfAbsent(Lorg/xbill/DNS/NSEC3Record;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;

    move-result-object v2

    .line 266
    invoke-virtual {v2}, Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;->getHash()[B

    move-result-object v2

    invoke-direct {p0, v1, p2, v2}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->nsec3Covers(Lorg/xbill/DNS/NSEC3Record;Lorg/xbill/DNS/Name;[B)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v1

    :catch_0
    move-exception v1

    .line 271
    iget v2, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalcErrors:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalcErrors:I

    sget-object v2, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v3, "Unrecognized NSEC3 in set: {}"

    .line 272
    invoke-interface {v2, v3, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private findMatchingNSEC3(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/NSEC3Record;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/Name;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;",
            "Lorg/xbill/DNS/dnssec/Nsec3ValidationState;",
            ")",
            "Lorg/xbill/DNS/NSEC3Record;"
        }
    .end annotation

    .line 182
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/dnssec/SRRset;

    .line 183
    iget v1, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    .line 184
    iget p1, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    iget p2, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalcErrors:I

    if-ne p1, p2, :cond_1

    sget-object p1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string p2, "NSEC3 reached max. hash calculation errors"

    .line 185
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 186
    iput p1, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    goto :goto_2

    :cond_1
    sget-object p1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string p2, "NSEC3 reached max. hash calculations"

    .line 188
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 194
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/NSEC3Record;

    .line 195
    invoke-virtual {p4, v1, p1}, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->computeIfAbsent(Lorg/xbill/DNS/NSEC3Record;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;

    move-result-object v2

    .line 196
    new-instance v3, Lorg/xbill/DNS/Name;

    invoke-virtual {v2}, Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;->getHashAsBase32()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, p2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 197
    invoke-virtual {v1}, Lorg/xbill/DNS/NSEC3Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 201
    :goto_1
    iget v2, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalcErrors:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalcErrors:I

    sget-object v2, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v3, "Unrecognized NSEC3 in set: {}"

    .line 202
    invoke-interface {v2, v3, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private nextClosest(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1

    .line 167
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->labels()I

    move-result p2

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    .line 168
    new-instance p2, Lorg/xbill/DNS/Name;

    invoke-direct {p2, p1, v0}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method private nsec3Covers(Lorg/xbill/DNS/NSEC3Record;Lorg/xbill/DNS/Name;[B)Z
    .locals 3

    .line 220
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-virtual {p1}, Lorg/xbill/DNS/NSEC3Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v0, p2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 224
    :cond_0
    new-instance p2, Lorg/xbill/DNS/utils/base32;

    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUV="

    invoke-direct {p2, v1, v0, v0}, Lorg/xbill/DNS/utils/base32;-><init>(Ljava/lang/String;ZZ)V

    .line 226
    invoke-virtual {p1}, Lorg/xbill/DNS/NSEC3Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/xbill/DNS/utils/base32;->fromString(Ljava/lang/String;)[B

    move-result-object p2

    .line 227
    invoke-virtual {p1}, Lorg/xbill/DNS/NSEC3Record;->getNext()[B

    move-result-object p1

    .line 230
    invoke-static {p2, p3}, Lorg/xbill/DNS/dnssec/ByteArrayComparator;->compare([B[B)I

    move-result v1

    if-gez v1, :cond_1

    .line 231
    invoke-static {p3, p1}, Lorg/xbill/DNS/dnssec/ByteArrayComparator;->compare([B[B)I

    move-result v1

    if-gez v1, :cond_1

    return v2

    .line 237
    :cond_1
    invoke-static {p1, p2}, Lorg/xbill/DNS/dnssec/ByteArrayComparator;->compare([B[B)I

    move-result v1

    if-gtz v1, :cond_2

    .line 238
    invoke-static {p3, p2}, Lorg/xbill/DNS/dnssec/ByteArrayComparator;->compare([B[B)I

    move-result p2

    if-gtz p2, :cond_3

    .line 239
    invoke-static {p3, p1}, Lorg/xbill/DNS/dnssec/ByteArrayComparator;->compare([B[B)I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2
.end method

.method private proveClosestEncloser(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/Name;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;",
            "Lorg/xbill/DNS/dnssec/Nsec3ValidationState;",
            ")",
            "Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;"
        }
    .end annotation

    .line 324
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->findClosestEncloser(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string p2, "Could not find a candidate for the closest encloser"

    .line 326
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 327
    new-instance p1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;

    sget-object p2, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p3}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/NSEC3Record;Lorg/xbill/DNS/dnssec/NSEC3ValUtils$1;)V

    .line 328
    sget-object p2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-static {p1, p2}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$102(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;Lorg/xbill/DNS/dnssec/SecurityStatus;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 332
    :cond_0
    invoke-static {v0}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$200(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string p2, "Proved that qname existed!"

    .line 333
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 334
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-static {v0, p1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$102(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;Lorg/xbill/DNS/dnssec/SecurityStatus;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object v0

    .line 341
    :cond_1
    invoke-static {v0}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$300(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$300(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 342
    invoke-static {v0}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$300(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object p1

    const/16 p2, 0x2b

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 343
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-static {v0, p1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$102(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;Lorg/xbill/DNS/dnssec/SecurityStatus;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object v0

    :cond_2
    sget-object p1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string p2, "Closest encloser was a delegation!"

    .line 347
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 348
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-static {v0, p1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$102(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;Lorg/xbill/DNS/dnssec/SecurityStatus;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object v0

    .line 352
    :cond_3
    invoke-static {v0}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$300(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string p2, "Closest encloser was a DNAME!"

    .line 353
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 354
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-static {v0, p1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$102(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;Lorg/xbill/DNS/dnssec/SecurityStatus;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object v0

    .line 359
    :cond_4
    invoke-static {v0}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$200(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->nextClosest(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p1

    .line 360
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->findCoveringNSEC3(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$402(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;Lorg/xbill/DNS/NSEC3Record;)Lorg/xbill/DNS/NSEC3Record;

    .line 361
    invoke-static {v0}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$400(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object p1

    if-nez p1, :cond_5

    sget-object p1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string p2, "Could not find proof that the closest encloser was the closest encloser"

    .line 362
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 363
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-static {v0, p1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$102(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;Lorg/xbill/DNS/dnssec/SecurityStatus;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object v0

    .line 367
    :cond_5
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-static {v0, p1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$102(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;Lorg/xbill/DNS/dnssec/SecurityStatus;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object v0
.end method

.method private supportsHashAlgorithm(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private validIterations(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/KeyCache;)Z
    .locals 5

    .line 372
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getSignerName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/xbill/DNS/dnssec/KeyCache;->find(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 382
    :cond_0
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/xbill/DNS/dnssec/SRRset;->rrs(Z)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const v1, 0x7fffffff

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Record;

    .line 383
    check-cast v2, Lorg/xbill/DNS/DNSKEYRecord;

    .line 384
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSKEYRecord;->getFlags()I

    move-result v3

    const/16 v4, 0x100

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/16 v4, 0x1c8

    goto :goto_1

    .line 405
    :pswitch_2
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    .line 406
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 407
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 408
    invoke-virtual {v2}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v2

    .line 409
    invoke-interface {v2}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v4

    goto :goto_1

    :pswitch_3
    const/16 v4, 0x200

    goto :goto_1

    .line 396
    :pswitch_4
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    goto :goto_1

    .line 400
    :pswitch_5
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    :goto_1
    :pswitch_6
    if-ge v4, v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->maxIterations:Ljava/util/TreeMap;

    .line 430
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->maxIterations:Ljava/util/TreeMap;

    .line 432
    invoke-virtual {p2}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    :cond_4
    iget-object v1, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->maxIterations:Ljava/util/TreeMap;

    .line 435
    invoke-virtual {v1, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 436
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->first()Lorg/xbill/DNS/Record;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/NSEC3Record;

    invoke-virtual {p1}, Lorg/xbill/DNS/NSEC3Record;->getIterations()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Lorg/xbill/DNS/DNSSEC$DNSSECException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p1, p2, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    :catch_0
    move-exception p1

    sget-object p2, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v1, "Could not get public key from NSEC3 record"

    .line 438
    invoke-interface {p2, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public allNSEC3sIgnorable(Ljava/util/List;Lorg/xbill/DNS/dnssec/KeyCache;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;",
            "Lorg/xbill/DNS/dnssec/KeyCache;",
            ")Z"
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 454
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/dnssec/SRRset;

    .line 455
    invoke-virtual {v2}, Lorg/xbill/DNS/dnssec/SRRset;->rrs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xbill/DNS/Record;

    .line 456
    check-cast v5, Lorg/xbill/DNS/NSEC3Record;

    .line 457
    new-instance v6, Lorg/xbill/DNS/Name;

    invoke-virtual {v5}, Lorg/xbill/DNS/NSEC3Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 458
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/xbill/DNS/NSEC3Record;

    if-eqz v7, :cond_7

    .line 460
    invoke-virtual {v5}, Lorg/xbill/DNS/NSEC3Record;->getHashAlgorithm()I

    move-result v6

    invoke-virtual {v7}, Lorg/xbill/DNS/NSEC3Record;->getHashAlgorithm()I

    move-result v8

    if-eq v6, v8, :cond_2

    return v4

    .line 464
    :cond_2
    invoke-virtual {v5}, Lorg/xbill/DNS/NSEC3Record;->getIterations()I

    move-result v6

    invoke-virtual {v7}, Lorg/xbill/DNS/NSEC3Record;->getIterations()I

    move-result v8

    if-eq v6, v8, :cond_3

    return v4

    .line 468
    :cond_3
    invoke-virtual {v5}, Lorg/xbill/DNS/NSEC3Record;->getSalt()[B

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v7}, Lorg/xbill/DNS/NSEC3Record;->getSalt()[B

    move-result-object v8

    if-nez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    xor-int/2addr v6, v8

    if-eqz v6, :cond_6

    return v4

    .line 472
    :cond_6
    invoke-virtual {v5}, Lorg/xbill/DNS/NSEC3Record;->getSalt()[B

    move-result-object v6

    if-eqz v6, :cond_1

    .line 473
    invoke-virtual {v5}, Lorg/xbill/DNS/NSEC3Record;->getSalt()[B

    move-result-object v5

    invoke-virtual {v7}, Lorg/xbill/DNS/NSEC3Record;->getSalt()[B

    move-result-object v6

    invoke-static {v5, v6}, Lorg/xbill/DNS/dnssec/ByteArrayComparator;->compare([B[B)I

    move-result v5

    if-eqz v5, :cond_1

    return v4

    .line 477
    :cond_7
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 482
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/dnssec/SRRset;

    .line 483
    invoke-direct {p0, v0, p2}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->validIterations(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/KeyCache;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    :cond_a
    return v4
.end method

.method init(Ljava/util/Properties;)V
    .locals 5

    .line 81
    invoke-virtual {p1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dnsjava.dnssec.nsec3.iterations"

    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "."

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 85
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/high16 v4, 0x10000

    if-gt v2, v4, :cond_2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->maxIterations:Ljava/util/TreeMap;

    .line 93
    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    const/4 v1, 0x0

    :cond_1
    iget-object v4, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->maxIterations:Ljava/util/TreeMap;

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " iterations is too high, maximum is 65536"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method public proveNameError(Ljava/util/List;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/dnssec/SecurityStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/dnssec/Nsec3ValidationState;",
            ")",
            "Lorg/xbill/DNS/dnssec/SecurityStatus;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 507
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    invoke-direct {p0, p2, p3, p1, p4}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->proveClosestEncloser(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;

    move-result-object p2

    .line 515
    invoke-static {p2}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$100(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v0

    sget-object v1, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-eq v0, v1, :cond_1

    sget-object p1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string p3, "Failed to prove a closest encloser"

    .line 516
    invoke-interface {p1, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 517
    invoke-static {p2}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$100(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object p1

    return-object p1

    .line 522
    :cond_1
    invoke-static {p2}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$200(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->ceWildcard(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    if-nez v0, :cond_2

    .line 524
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 527
    :cond_2
    invoke-direct {p0, v0, p3, p1, p4}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->findCoveringNSEC3(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object p1

    if-nez p1, :cond_5

    sget-object p1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string p2, "Could not prove that the applicable wildcard did not exist"

    .line 529
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 530
    iget p2, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    const-string p2, "NSEC3 reached max. hash calculation errors"

    .line 531
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 532
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 533
    :cond_3
    iget p2, p4, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    const/16 p3, 0x8

    if-ne p2, p3, :cond_4

    const-string p2, "NSEC3 reached max. hash calculations"

    .line 534
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 535
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 538
    :cond_4
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 541
    :cond_5
    invoke-static {p2}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$400(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/NSEC3Record;->getFlags()I

    move-result p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_6

    sget-object p1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string p2, "NSEC3 nameerror proof: nc has optout"

    .line 542
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 543
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 546
    :cond_6
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 508
    :cond_7
    :goto_0
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1
.end method

.method public proveNoDS(Ljava/util/List;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/dnssec/SecurityStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/dnssec/Nsec3ValidationState;",
            ")",
            "Lorg/xbill/DNS/dnssec/SecurityStatus;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 769
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 774
    :cond_0
    invoke-direct {p0, p2, p3, p1, p4}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->findMatchingNSEC3(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 p1, 0x6

    .line 780
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x2b

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 786
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 787
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->INDETERMINATE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 791
    :cond_2
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 781
    :cond_3
    :goto_0
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 795
    :cond_4
    invoke-direct {p0, p2, p3, p1, p4}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->proveClosestEncloser(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;

    move-result-object p1

    .line 796
    invoke-static {p1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$100(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object p2

    sget-object p3, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-eq p2, p3, :cond_5

    .line 797
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 803
    :cond_5
    invoke-static {p1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$400(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/NSEC3Record;->getFlags()I

    move-result p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eq p1, p2, :cond_6

    .line 804
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 808
    :cond_6
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 770
    :cond_7
    :goto_1
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1
.end method

.method public proveNodata(Ljava/util/List;Lorg/xbill/DNS/Name;ILorg/xbill/DNS/Name;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;",
            "Lorg/xbill/DNS/Name;",
            "I",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/dnssec/Nsec3ValidationState;",
            ")",
            "Lorg/xbill/DNS/dnssec/JustifiedSecStatus;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v7, 0x0

    if-eqz v1, :cond_17

    .line 576
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_0

    .line 581
    :cond_0
    invoke-direct {v0, v2, v4, v1, v5}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->findMatchingNSEC3(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x5

    const/16 v11, 0x2b

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x6

    if-eqz v8, :cond_6

    .line 584
    invoke-virtual {v8, v3}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Matching NSEC3 proved that type existed!"

    .line 585
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 586
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.type_exists"

    new-array v4, v7, [Ljava/lang/Object;

    .line 587
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v14, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 590
    :cond_1
    invoke-virtual {v8, v10}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Matching NSEC3 proved that a CNAME existed!"

    .line 591
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 592
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.cname_exists"

    new-array v4, v7, [Ljava/lang/Object;

    .line 593
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v14, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    :cond_2
    if-ne v3, v11, :cond_3

    .line 596
    invoke-virtual {v8, v14}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Apex NSEC3 abused for no DS proof, bogus"

    .line 597
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 598
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.apex_abuse"

    new-array v4, v7, [Ljava/lang/Object;

    .line 599
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v14, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    :cond_3
    if-eq v3, v11, :cond_5

    .line 600
    invoke-virtual {v8, v9}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v8, v14}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 601
    invoke-virtual {v8, v11}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Matching NSEC3 is insecure delegation"

    .line 602
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 603
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-direct {v1, v2, v13, v12}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    :cond_4
    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Matching NSEC3 is a delegation, bogus"

    .line 606
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 607
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.delegation"

    new-array v4, v7, [Ljava/lang/Object;

    .line 608
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v14, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 611
    :cond_5
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-direct {v1, v2, v13, v12}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 614
    :cond_6
    iget v8, v5, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    const-string v15, "NSEC3 reached max. hash calculation errors"

    if-ne v8, v13, :cond_7

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    .line 615
    invoke-interface {v1, v15}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 616
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.hash_errors"

    new-array v4, v7, [Ljava/lang/Object;

    .line 617
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v14, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 618
    :cond_7
    iget v8, v5, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    const-string v6, "NSEC3 reached max. hash calculations"

    const/16 v9, 0x8

    if-ne v8, v9, :cond_8

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    .line 619
    invoke-interface {v1, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 620
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-direct {v1, v2, v13, v12}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 626
    :cond_8
    invoke-direct {v0, v2, v4, v1, v5}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->proveClosestEncloser(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;

    move-result-object v8

    .line 630
    invoke-static {v8}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$100(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v9

    sget-object v10, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v9, v10, :cond_9

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Did not match qname, nor found a proven closest encloser"

    .line 631
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 632
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.qname_ce"

    new-array v4, v7, [Ljava/lang/Object;

    .line 633
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v14, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 634
    :cond_9
    invoke-static {v8}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$100(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v9

    sget-object v10, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v9, v10, :cond_a

    if-eq v3, v11, :cond_a

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Closest NSEC3 is insecure delegation"

    .line 635
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 636
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-direct {v1, v2, v13, v12}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 637
    :cond_a
    invoke-static {v8}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$100(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v9

    sget-object v10, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v9, v10, :cond_b

    .line 638
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-direct {v1, v2, v13, v12}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 644
    :cond_b
    invoke-static {v8}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$200(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/Name;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->ceWildcard(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v9

    .line 645
    invoke-direct {v0, v9, v4, v1, v5}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->findMatchingNSEC3(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_11

    .line 647
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Matching wildcard has qtype {}"

    .line 648
    invoke-static/range {p3 .. p3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 649
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.type_exists_wc"

    new-array v4, v7, [Ljava/lang/Object;

    .line 650
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v14, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    :cond_c
    const/4 v5, 0x5

    .line 651
    invoke-virtual {v1, v5}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Matching wildcard has a CNAME, bogus"

    .line 652
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 653
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.cname_exists_wc"

    new-array v4, v7, [Ljava/lang/Object;

    .line 654
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v14, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    :cond_d
    if-ne v3, v11, :cond_e

    .line 657
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    if-eq v2, v4, :cond_e

    invoke-virtual {v1, v14}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Matching wildcard for no DS proof has a SOA, bogus"

    .line 658
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 659
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.wc_soa"

    new-array v4, v7, [Ljava/lang/Object;

    .line 660
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v14, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    :cond_e
    if-eq v3, v11, :cond_f

    const/4 v2, 0x2

    .line 661
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1, v14}, Lorg/xbill/DNS/NSEC3Record;->hasType(I)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Matching wildcard is a delegation, bogus"

    .line 662
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 663
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.delegation_wc"

    new-array v4, v7, [Ljava/lang/Object;

    .line 664
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v14, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 667
    :cond_f
    invoke-static {v8}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$400(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {v8}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$400(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/NSEC3Record;->getFlags()I

    move-result v1

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_10

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Matching wildcard is in opt-out range, insecure"

    .line 668
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 669
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-direct {v1, v2, v13, v12}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 672
    :cond_10
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-direct {v1, v2, v13, v12}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 675
    :cond_11
    iget v1, v5, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    if-ne v1, v13, :cond_12

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    .line 676
    invoke-interface {v1, v15}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 677
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.wc.hash_errors"

    new-array v4, v7, [Ljava/lang/Object;

    .line 678
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v14, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 679
    :cond_12
    iget v1, v5, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->numCalc:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_13

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    .line 680
    invoke-interface {v1, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 681
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-direct {v1, v2, v13, v12}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 688
    :cond_13
    invoke-static {v8}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$400(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object v1

    if-nez v1, :cond_14

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "No next closer NSEC3"

    .line 689
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 690
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.no_next"

    new-array v4, v7, [Ljava/lang/Object;

    .line 691
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    invoke-direct {v1, v2, v4, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 695
    :cond_14
    invoke-static {v8}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$400(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/NSEC3Record;->getFlags()I

    move-result v1

    and-int/2addr v1, v4

    if-nez v1, :cond_16

    if-eq v3, v11, :cond_15

    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Covering NSEC3 was not opt-out in an opt-out DS NOERROR/NODATA case"

    .line 697
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 698
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.not_optout"

    new-array v4, v7, [Ljava/lang/Object;

    .line 699
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v14, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    :cond_15
    sget-object v1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Could not find matching NSEC3, nor matching wildcard, and qtype is not DS -- no more options"

    .line 701
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 703
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.not_found"

    new-array v4, v7, [Ljava/lang/Object;

    .line 704
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    invoke-direct {v1, v2, v4, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 709
    :cond_16
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-direct {v1, v2, v13, v12}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1

    .line 577
    :cond_17
    :goto_0
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3.none"

    new-array v4, v7, [Ljava/lang/Object;

    .line 578
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    invoke-direct {v1, v2, v4, v3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1
.end method

.method public proveWildcard(Ljava/util/List;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/dnssec/SecurityStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/dnssec/Nsec3ValidationState;",
            ")",
            "Lorg/xbill/DNS/dnssec/SecurityStatus;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 724
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    new-instance v0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;

    new-instance v1, Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    invoke-direct {v1, p4, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/NSEC3Record;Lorg/xbill/DNS/dnssec/NSEC3ValUtils$1;)V

    .line 734
    invoke-static {v0}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$200(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->nextClosest(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 735
    invoke-direct {p0, v1, p3, p1, p5}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->findCoveringNSEC3(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Ljava/util/List;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$402(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;Lorg/xbill/DNS/NSEC3Record;)Lorg/xbill/DNS/NSEC3Record;

    .line 737
    invoke-static {v0}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$400(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->log:Lorg/slf4j/Logger;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p3, p5

    .line 741
    invoke-static {v0}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$200(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/Name;

    move-result-object p2

    aput-object p2, p3, v2

    const/4 p2, 0x2

    aput-object p4, p3, p2

    const-string p2, "did not find a covering NSEC3 that covered the next closer name to {} from {} (derived from wildcard {})"

    .line 738
    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 746
    :cond_1
    invoke-static {v0}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->access$400(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/NSEC3Record;->getFlags()I

    move-result p1

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_2

    .line 747
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 750
    :cond_2
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1

    .line 725
    :cond_3
    :goto_0
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1
.end method

.method public stripUnknownAlgNSEC3s(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/dnssec/SRRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/NSEC3Record;

    .line 137
    invoke-virtual {v0}, Lorg/xbill/DNS/NSEC3Record;->getHashAlgorithm()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->supportsHashAlgorithm(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
