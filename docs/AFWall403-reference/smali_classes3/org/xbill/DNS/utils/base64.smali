.class public Lorg/xbill/DNS/utils/base64;
.super Ljava/lang/Object;
.source "base64.java"


# static fields
.field private static final Base64:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

.field private static final Base64Url:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatString([BILjava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-static {p0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/xbill/DNS/utils/BaseUtils;->wrapLines(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)[B
    .locals 16

    .line 100
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 102
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-byte v5, v1, v4

    int-to-char v6, v5

    .line 103
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 104
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 108
    array-length v2, v1

    const/4 v4, 0x4

    rem-int/2addr v2, v4

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    return-object v5

    .line 112
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 113
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v6, 0x0

    .line 115
    :goto_1
    array-length v7, v1

    const/4 v8, 0x3

    add-int/2addr v7, v8

    div-int/2addr v7, v4

    if-ge v6, v7, :cond_9

    new-array v7, v4, [S

    new-array v9, v8, [S

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v4, :cond_3

    mul-int/lit8 v11, v6, 0x4

    add-int/2addr v11, v10

    .line 120
    aget-byte v11, v1, v11

    const-string v12, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    int-to-short v11, v11

    aput-short v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    aget-short v10, v7, v3

    const/4 v11, 0x2

    shl-int/2addr v10, v11

    const/4 v12, 0x1

    aget-short v13, v7, v12

    shr-int/lit8 v14, v13, 0x4

    add-int/2addr v10, v14

    int-to-short v10, v10

    aput-short v10, v9, v3

    aget-short v10, v7, v11

    const/4 v14, -0x1

    const/16 v15, 0x40

    if-ne v10, v15, :cond_4

    aput-short v14, v9, v11

    aput-short v14, v9, v12

    aget-short v7, v7, v12

    and-int/lit8 v7, v7, 0xf

    if-eqz v7, :cond_6

    return-object v5

    :cond_4
    aget-short v3, v7, v8

    if-ne v3, v15, :cond_5

    shl-int/lit8 v3, v13, 0x4

    shr-int/lit8 v10, v10, 0x2

    add-int/2addr v3, v10

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v9, v12

    aput-short v14, v9, v11

    aget-short v3, v7, v11

    and-int/2addr v3, v8

    if-eqz v3, :cond_6

    return-object v5

    :cond_5
    shl-int/lit8 v7, v13, 0x4

    shr-int/lit8 v13, v10, 0x2

    add-int/2addr v7, v13

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    aput-short v7, v9, v12

    shl-int/lit8 v7, v10, 0x6

    add-int/2addr v7, v3

    and-int/lit16 v3, v7, 0xff

    int-to-short v3, v3

    aput-short v3, v9, v11

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_8

    .line 142
    :try_start_0
    aget-short v7, v9, v3

    if-ltz v7, :cond_7

    .line 143
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_0
    :cond_8
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 149
    :cond_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, v0}, Lorg/xbill/DNS/utils/base64;->toString([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([BZ)Ljava/lang/String;
    .locals 13

    if-eqz p1, :cond_0

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    goto :goto_0

    :cond_0
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    .line 43
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 44
    :goto_1
    array-length v4, p0

    const/4 v5, 0x2

    add-int/2addr v4, v5

    const/4 v6, 0x3

    div-int/2addr v4, v6

    if-ge v3, v4, :cond_8

    new-array v4, v6, [S

    const/4 v7, 0x4

    new-array v8, v7, [S

    const/4 v9, 0x0

    :goto_2
    const/4 v10, -0x1

    if-ge v9, v6, :cond_2

    mul-int/lit8 v11, v3, 0x3

    add-int/2addr v11, v9

    .line 48
    array-length v12, p0

    if-ge v11, v12, :cond_1

    .line 49
    aget-byte v10, p0, v11

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    aput-short v10, v4, v9

    goto :goto_3

    .line 51
    :cond_1
    aput-short v10, v4, v9

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    aget-short v9, v4, v2

    shr-int/2addr v9, v5

    int-to-short v9, v9

    aput-short v9, v8, v2

    const/4 v9, 0x1

    aget-short v11, v4, v9

    if-ne v11, v10, :cond_3

    aget-short v11, v4, v2

    and-int/2addr v11, v6

    shl-int/2addr v11, v7

    int-to-short v11, v11

    aput-short v11, v8, v9

    goto :goto_4

    :cond_3
    aget-short v12, v4, v2

    and-int/2addr v12, v6

    shl-int/2addr v12, v7

    shr-int/lit8 v11, v11, 0x4

    add-int/2addr v12, v11

    int-to-short v11, v12

    aput-short v11, v8, v9

    :goto_4
    aget-short v9, v4, v9

    const/16 v11, 0x40

    if-ne v9, v10, :cond_4

    aput-short v11, v8, v6

    aput-short v11, v8, v5

    goto :goto_5

    :cond_4
    aget-short v12, v4, v5

    if-ne v12, v10, :cond_5

    and-int/lit8 v4, v9, 0xf

    shl-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v8, v5

    aput-short v11, v8, v6

    goto :goto_5

    :cond_5
    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v5

    shr-int/lit8 v10, v12, 0x6

    add-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v8, v5

    aget-short v4, v4, v5

    and-int/lit8 v4, v4, 0x3f

    int-to-short v4, v4

    aput-short v4, v8, v6

    :goto_5
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v7, :cond_7

    .line 71
    aget-short v5, v8, v4

    if-ne v5, v11, :cond_6

    if-eqz p1, :cond_6

    goto :goto_7

    .line 74
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 77
    :cond_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
