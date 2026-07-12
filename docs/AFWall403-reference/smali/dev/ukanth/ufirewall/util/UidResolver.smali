.class public Ldev/ukanth/ufirewall/util/UidResolver;
.super Ljava/lang/Object;
.source "UidResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;,
        Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;,
        Ldev/ukanth/ufirewall/util/UidResolver$ProcessInfo;
    }
.end annotation


# static fields
.field private static final CACHE_TTL_MS:J = 0x493e0L

.field private static final FREQUENT_UID_CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_CACHE_SIZE:I = 0x1f4

.field private static final SYSTEM_UIDS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AFWall"

.field private static final UID_CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Ldev/ukanth/ufirewall/util/UidResolver;->SYSTEM_UIDS:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "root"

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3e8

    const-string v2, "system"

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3e9

    const-string v2, "radio"

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3ea

    const-string v2, "bluetooth"

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3eb

    const-string v2, "graphics"

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3ec

    const-string v2, "input"

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3ed

    const-string v2, "audio"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3ee

    const-string v2, "camera"

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3ef

    const-string v2, "log"

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3f0

    const-string v2, "compass"

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3f1

    const-string v2, "mount"

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3f2

    const-string v2, "wifi"

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3f3

    const-string v2, "adb"

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3f4

    const-string v2, "install"

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3f5

    const-string v2, "media"

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3f6

    const-string v2, "dhcp"

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3f7

    const-string v2, "sdcard_rw"

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3f8

    const-string v2, "vpn"

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3f9

    const-string v2, "keystore"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3fa

    const-string v2, "usb"

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3fb

    const-string v2, "drm"

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3fc

    const-string v2, "mdnsr"

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3fd

    const-string v2, "gps"

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3ff

    const-string v2, "media_rw"

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x400

    const-string v2, "mtp"

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x401

    const-string v2, "unused1"

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x402

    const-string v2, "unused2"

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x403

    const-string v2, "unused3"

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x404

    const-string v2, "unused4"

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x405

    const-string v2, "clat"

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x406

    const-string v2, "hsm"

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x407

    const-string v2, "reserved"

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7d0

    const-string v2, "shell"

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x270f

    const-string v2, "nobody"

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x408

    :goto_0
    const/16 v1, 0x44b

    if-gt v0, v1, :cond_0

    sget-object v1, Ldev/ukanth/ufirewall/util/UidResolver;->SYSTEM_UIDS:Landroid/util/SparseArray;

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "system_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ldev/ukanth/ufirewall/util/UidResolver;->UID_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance v0, Ldev/ukanth/ufirewall/util/UidResolver$1;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ldev/ukanth/ufirewall/util/UidResolver$1;-><init>(I)V

    sput-object v0, Ldev/ukanth/ufirewall/util/UidResolver;->FREQUENT_UID_CACHE:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheResult(ILjava/lang/String;Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;)V
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/util/UidResolver;->UID_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 617
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;

    invoke-direct {v2, p1, p2}, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;-><init>(Ljava/lang/String;Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->SYSTEM_DB:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    if-ne p2, v0, :cond_0

    sget-object p2, Ldev/ukanth/ufirewall/util/UidResolver;->FREQUENT_UID_CACHE:Landroid/util/LruCache;

    .line 621
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static cleanExpiredEntries()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    sget-object v0, Ldev/ukanth/ufirewall/util/UidResolver;->UID_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 630
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/util/UidResolver$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/util/UidResolver$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Set;Ljava/util/function/Predicate;)Z

    goto :goto_1

    :cond_0
    sget-object v0, Ldev/ukanth/ufirewall/util/UidResolver;->UID_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 633
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 634
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 635
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 636
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static cleanProcessName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    .line 436
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    const/4 v1, 0x0

    .line 439
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    .line 442
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 443
    array-length v2, v0

    if-lez v2, :cond_1

    .line 444
    aget-object p0, v0, v1

    const/16 v0, 0x2f

    .line 446
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 448
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static clearCache()V
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/UidResolver;->UID_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 646
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Ldev/ukanth/ufirewall/util/UidResolver;->FREQUENT_UID_CACHE:Landroid/util/LruCache;

    .line 647
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    const-string v0, "AFWall"

    const-string v1, "UID resolution caches cleared"

    .line 648
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static createMultiUserUid(II)I
    .locals 1

    const v0, 0x186a0

    mul-int p0, p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static getAppId(I)I
    .locals 1

    const v0, 0x186a0

    .line 579
    rem-int/2addr p0, v0

    return p0
.end method

.method public static getCacheStats()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Ldev/ukanth/ufirewall/util/UidResolver;->UID_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 665
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ldev/ukanth/ufirewall/util/UidResolver;->FREQUENT_UID_CACHE:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Cache: %d entries, LRU: %d entries"

    .line 664
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUidTypeDescription(I)Ljava/lang/String;
    .locals 3

    if-gez p0, :cond_0

    const-string p0, "invalid"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "root"

    return-object p0

    :cond_1
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_2

    const-string p0, "system_low"

    return-object p0

    :cond_2
    const/16 v0, 0x2710

    if-ge p0, v0, :cond_3

    const-string p0, "system"

    return-object p0

    :cond_3
    const v0, 0x186a0

    if-ge p0, v0, :cond_4

    const-string p0, "app_primary"

    return-object p0

    .line 607
    :cond_4
    invoke-static {p0}, Ldev/ukanth/ufirewall/util/UidResolver;->getUserId(I)I

    move-result v0

    .line 608
    invoke-static {p0}, Ldev/ukanth/ufirewall/util/UidResolver;->getAppId(I)I

    move-result p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 609
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "app_user%d(app:%d)"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserId(I)I
    .locals 1

    const v0, 0x186a0

    .line 570
    div-int/2addr p0, v0

    return p0
.end method

.method public static invalidateUid(I)V
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/UidResolver;->UID_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 655
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldev/ukanth/ufirewall/util/UidResolver;->FREQUENT_UID_CACHE:Landroid/util/LruCache;

    .line 656
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cache invalidated for UID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AFWall"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isAppUid(I)Z
    .locals 1

    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMultiUserUid(I)Z
    .locals 1

    const v0, 0x186a0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSystemUid(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidPackageName(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 532
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "."

    .line 537
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 539
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    const-string v1, "^[a-zA-Z0-9._]+$"

    .line 540
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic lambda$cleanExpiredEntries$1(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 630
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;->isExpired()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$resolveViaProc$0(Ljava/io/File;)Z
    .locals 1

    .line 288
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static parseProcessStatus(Ljava/io/File;)Ldev/ukanth/ufirewall/util/UidResolver$ProcessInfo;
    .locals 11

    const/4 v0, 0x0

    .line 371
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p0, -0x1

    move-object v3, v0

    move-object v5, v3

    const/4 v2, -0x1

    const/4 v4, -0x1

    .line 378
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v7, "Name:"

    .line 379
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    const-string v9, "\\s+"

    const/4 v10, 0x2

    if-eqz v7, :cond_1

    .line 380
    :try_start_2
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 381
    array-length v7, v6

    if-lt v7, v10, :cond_0

    .line 382
    aget-object v3, v6, v8

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v7, "Pid:"

    .line 384
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 385
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 386
    array-length v7, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v7, v10, :cond_0

    .line 388
    :try_start_3
    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_4
    const-string v7, "State:"

    .line 393
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 394
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 395
    array-length v7, v6

    if-lt v7, v10, :cond_0

    .line 396
    aget-object v5, v6, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const-string v7, "Uid:"

    .line 398
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 399
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 400
    array-length v7, v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lt v7, v10, :cond_0

    .line 402
    :try_start_5
    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_4
    if-eq v2, p0, :cond_5

    .line 411
    :try_start_6
    new-instance p0, Ldev/ukanth/ufirewall/util/UidResolver$ProcessInfo;

    invoke-direct {p0, v3, v2, v4, v5}, Ldev/ukanth/ufirewall/util/UidResolver$ProcessInfo;-><init>(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 414
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object p0

    :cond_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 371
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_9
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    :goto_2
    return-object v0
.end method

.method private static readFirstLine(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 424
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 426
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 427
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 424
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0
.end method

.method private static resolveSystemUid(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/util/UidResolver;->SYSTEM_UIDS:Landroid/util/SparseArray;

    .line 216
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static resolveUid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    sget-object v0, Ldev/ukanth/ufirewall/util/UidResolver;->FREQUENT_UID_CACHE:Landroid/util/LruCache;

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "UID "

    const-string v3, "AFWall"

    if-eqz v1, :cond_0

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resolved from LRU cache: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    sget-object v1, Ldev/ukanth/ufirewall/util/UidResolver;->UID_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;

    if-eqz v4, :cond_1

    .line 154
    invoke-virtual {v4}, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;->isExpired()Z

    move-result v5

    if-nez v5, :cond_1

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object v1, v4, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resolved from cache ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;->method:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p0, v4, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;->name:Ljava/lang/String;

    return-object p0

    .line 162
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v4, 0x1f4

    if-le v0, v4, :cond_2

    .line 163
    invoke-static {}, Ldev/ukanth/ufirewall/util/UidResolver;->cleanExpiredEntries()V

    .line 167
    :cond_2
    sget-object v0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->UNKNOWN:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    .line 170
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/UidResolver;->resolveSystemUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 172
    sget-object p0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->SYSTEM_DB:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    .line 173
    invoke-static {p1, v0, p0}, Ldev/ukanth/ufirewall/util/UidResolver;->cacheResult(ILjava/lang/String;Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;)V

    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resolved via system database: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 179
    :cond_3
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/util/UidResolver;->resolveViaPackageManager(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 181
    sget-object p0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->PACKAGE_MANAGER:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    .line 182
    invoke-static {p1, v0, p0}, Ldev/ukanth/ufirewall/util/UidResolver;->cacheResult(ILjava/lang/String;Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;)V

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resolved via PackageManager: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 188
    :cond_4
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/UidResolver;->resolveViaProc(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 190
    sget-object p0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->PROC_FS:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    .line 191
    invoke-static {p1, v0, p0}, Ldev/ukanth/ufirewall/util/UidResolver;->cacheResult(ILjava/lang/String;Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;)V

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resolved via /proc: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 197
    :cond_5
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/UidResolver;->resolveViaPackagesList(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 199
    sget-object p0, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->PACKAGES_LIST:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    .line 200
    invoke-static {p1, v0, p0}, Ldev/ukanth/ufirewall/util/UidResolver;->cacheResult(ILjava/lang/String;Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;)V

    .line 201
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resolved via packages.list: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 206
    :cond_6
    sget v0, Ldev/ukanth/ufirewall/R$string;->unknown_item:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;

    sget-object v5, Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;->UNKNOWN:Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;

    invoke-direct {v4, p0, v5}, Ldev/ukanth/ufirewall/util/UidResolver$CacheEntry;-><init>(Ljava/lang/String;Ldev/ukanth/ufirewall/util/UidResolver$ResolutionMethod;)V

    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " could not be resolved by any method"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static resolveViaPackageManager(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    const-string v0, "AFWall"

    const-string v1, "Trying base UID lookup for multi-user UID "

    .line 224
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 227
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, " (User "

    const-string v5, ")"

    if-eqz v2, :cond_1

    .line 228
    :try_start_1
    array-length v6, v2

    if-lez v6, :cond_1

    .line 229
    aget-object p0, v2, v3

    .line 232
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/UidResolver;->isMultiUserUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/UidResolver;->getUserId(I)I

    move-result v1

    .line 234
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/UidResolver;->getAppId(I)I

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    .line 241
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 242
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 243
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/UidResolver;->isMultiUserUid(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 244
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/UidResolver;->getUserId(I)I

    move-result p0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2

    .line 251
    :cond_3
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/UidResolver;->isMultiUserUid(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 252
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/UidResolver;->getAppId(I)I

    move-result v2

    .line 253
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/UidResolver;->getUserId(I)I

    move-result v6

    .line 255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (user:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", app:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 259
    array-length v7, v1

    if-lez v7, :cond_4

    .line 260
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :cond_4
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PackageManager resolution failed for UID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static resolveViaPackagesList(I)Ljava/lang/String;
    .locals 4

    const-string v0, "/system/etc/packages.list"

    const-string v1, "/data/data/packages.list"

    const-string v2, "/data/system/packages.list"

    .line 460
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 466
    aget-object v2, v0, v1

    .line 467
    invoke-static {v2, p0}, Ldev/ukanth/ufirewall/util/UidResolver;->tryReadPackagesList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found UID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AFWall"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static resolveViaProc(I)Ljava/lang/String;
    .locals 14

    const-string v0, "AFWall"

    const/4 v1, 0x0

    .line 280
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 286
    :cond_0
    new-instance v3, Ldev/ukanth/ufirewall/util/UidResolver$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ldev/ukanth/ufirewall/util/UidResolver$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 301
    :cond_1
    array-length v3, v2

    const/4 v4, 0x0

    move-object v6, v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v3, :cond_9

    aget-object v8, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    :try_start_1
    new-instance v9, Ljava/io/File;

    const-string v10, "status"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_2

    .line 307
    :cond_2
    invoke-static {v9}, Ldev/ukanth/ufirewall/util/UidResolver;->parseProcessStatus(Ljava/io/File;)Ldev/ukanth/ufirewall/util/UidResolver$ProcessInfo;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 308
    iget v10, v9, Ldev/ukanth/ufirewall/util/UidResolver$ProcessInfo;->uid:I

    if-ne v10, p0, :cond_8

    .line 315
    new-instance v10, Ljava/io/File;

    const-string v11, "cmdline"

    invoke-direct {v10, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 317
    invoke-static {v10}, Ldev/ukanth/ufirewall/util/UidResolver;->readFirstLine(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 318
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 319
    invoke-static {v10}, Ldev/ukanth/ufirewall/util/UidResolver;->cleanProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    goto :goto_1

    :cond_3
    move-object v10, v1

    const/4 v11, 0x0

    :goto_1
    if-eqz v10, :cond_4

    .line 325
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 326
    :cond_4
    new-instance v12, Ljava/io/File;

    const-string v13, "comm"

    invoke-direct {v12, v8, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v12}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 328
    invoke-static {v12}, Ldev/ukanth/ufirewall/util/UidResolver;->readFirstLine(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 329
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 330
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    :cond_5
    if-eqz v10, :cond_6

    .line 337
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 338
    :cond_6
    iget-object v8, v9, Ldev/ukanth/ufirewall/util/UidResolver$ProcessInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_7

    iget-object v8, v9, Ldev/ukanth/ufirewall/util/UidResolver$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 339
    iget-object v10, v9, Ldev/ukanth/ufirewall/util/UidResolver$ProcessInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v11, 0x1

    :cond_7
    if-eqz v10, :cond_8

    if-le v11, v7, :cond_8

    move-object v6, v10

    move v7, v11

    :catch_0
    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v6, :cond_a

    .line 357
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found process for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (score: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object v6

    :cond_b
    :goto_3
    const-string p0, "/proc directory not accessible"

    .line 282
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception p0

    const-string v2, "Failed to resolve UID via /proc"

    .line 362
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private static tryReadPackagesList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const-string v0, ": "

    const-string v1, "AFWall"

    const/4 v2, 0x0

    .line 482
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 487
    :cond_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 489
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 491
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v5, "\\s+"

    .line 495
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 497
    array-length v6, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    const/4 v6, 0x1

    .line 499
    :try_start_2
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const v7, 0x186a0

    .line 502
    rem-int v8, v6, v7

    if-eq v6, p1, :cond_3

    .line 504
    rem-int v6, p1, v7

    if-ne v8, v6, :cond_1

    :cond_3
    const/4 v6, 0x0

    .line 505
    aget-object v5, v5, v6

    .line 508
    invoke-static {v5}, Ldev/ukanth/ufirewall/util/UidResolver;->isValidPackageName(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 519
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v5

    .line 514
    :catch_0
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed line in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 519
    :cond_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 487
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    :goto_2
    return-object v2

    .line 523
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No permission to read "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (expected on non-root)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception p1

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to read "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v2
.end method
