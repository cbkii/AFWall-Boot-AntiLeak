.class final Lorg/xbill/DNS/dnssec/ByteArrayComparator;
.super Ljava/lang/Object;
.source "ByteArrayComparator.java"


# static fields
.field private static final MAX_BYTE:I = 0xff


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a utility class and cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compare([B[B)I
    .locals 4

    .line 27
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 28
    array-length p0, p0

    array-length p1, p1

    :goto_0
    sub-int/2addr p0, p1

    return p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 32
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_1

    and-int/lit16 p0, v2, 0xff

    and-int/lit16 p1, v3, 0xff

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method
