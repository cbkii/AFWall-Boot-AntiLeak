.class public Lhaibison/android/lockpattern/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# static fields
.field private static final CLASSNAME:Ljava/lang/String; = "LockPatternUtils"

.field public static final SHA1:Ljava/lang/String; = "SHA-1"

.field public static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genCaptchaPattern(I)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    move/from16 v0, p0

    if-lez v0, :cond_d

    const/16 v1, 0x9

    if-gt v0, v1, :cond_d

    .line 149
    invoke-static {}, Lhaibison/android/lockpattern/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 150
    invoke-static {v1}, Lhaibison/android/lockpattern/utils/Randoms;->randInt(I)I

    move-result v1

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v0, :cond_b

    .line 158
    div-int/lit8 v3, v1, 0x3

    const/4 v4, 0x3

    .line 159
    rem-int/2addr v1, v4

    rsub-int/lit8 v5, v3, 0x3

    .line 163
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    rsub-int/lit8 v6, v1, 0x3

    .line 164
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 162
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, -0x1

    :goto_1
    if-gt v8, v5, :cond_a

    sub-int v10, v3, v8

    sub-int v11, v1, v8

    add-int v12, v3, v8

    add-int v13, v1, v8

    const/4 v14, 0x4

    .line 180
    invoke-static {v14}, Lhaibison/android/lockpattern/utils/Randoms;->randIntArray(I)[I

    move-result-object v14

    .line 181
    array-length v15, v14

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v15, :cond_8

    aget v4, v14, v6

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_2

    const/4 v7, 0x2

    if-eq v4, v7, :cond_1

    const/4 v7, 0x3

    if-eq v4, v7, :cond_0

    goto/16 :goto_7

    :cond_0
    if-ltz v11, :cond_6

    add-int/lit8 v4, v10, 0x1

    const/4 v0, 0x0

    .line 224
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Lhaibison/android/lockpattern/utils/Randoms;->randIntArray(II)[I

    move-result-object v0

    .line 225
    array-length v4, v0

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_6

    aget v9, v0, v7

    move-object/from16 v17, v0

    const/4 v0, 0x3

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v11

    .line 227
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    const/4 v9, -0x1

    goto :goto_3

    :cond_1
    const/4 v0, 0x3

    if-ge v12, v0, :cond_6

    const/4 v4, 0x0

    .line 211
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v7, v4}, Lhaibison/android/lockpattern/utils/Randoms;->randIntArray(II)[I

    move-result-object v0

    .line 212
    array-length v4, v0

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v4, :cond_6

    aget v9, v0, v7

    mul-int/lit8 v17, v12, 0x3

    add-int v9, v17, v9

    move-object/from16 v17, v0

    .line 214
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    const/4 v9, -0x1

    goto :goto_4

    :cond_2
    const/4 v0, 0x3

    if-ge v13, v0, :cond_6

    add-int/lit8 v4, v10, 0x1

    const/4 v7, 0x0

    .line 198
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v7, v12, 0x1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v7}, Lhaibison/android/lockpattern/utils/Randoms;->randIntArray(II)[I

    move-result-object v4

    .line 199
    array-length v7, v4

    move/from16 v17, v9

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v7, :cond_3

    aget v16, v4, v9

    mul-int/lit8 v17, v16, 0x3

    add-int v17, v17, v13

    .line 201
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v9, v9, 0x1

    const/4 v0, 0x3

    const/16 v17, -0x1

    goto :goto_5

    :cond_3
    move/from16 v9, v17

    goto :goto_7

    :cond_4
    if-ltz v10, :cond_6

    const/4 v0, 0x0

    .line 185
    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v7, v13, 0x1

    const/4 v0, 0x3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v7}, Lhaibison/android/lockpattern/utils/Randoms;->randIntArray(II)[I

    move-result-object v4

    .line 186
    array-length v7, v4

    move/from16 v16, v9

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v7, :cond_5

    aget v16, v4, v9

    mul-int/lit8 v17, v10, 0x3

    add-int v16, v17, v16

    .line 188
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v9, v9, 0x1

    const/4 v0, 0x3

    const/16 v16, -0x1

    goto :goto_6

    :cond_5
    move/from16 v9, v16

    :cond_6
    :goto_7
    if-ltz v9, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p0

    const/4 v4, 0x3

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_8
    :goto_8
    if-ltz v9, :cond_9

    goto :goto_9

    :cond_9
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x3

    const/4 v7, 0x1

    move/from16 v0, p0

    goto/16 :goto_1

    :cond_a
    :goto_9
    move v1, v9

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, p0

    goto/16 :goto_0

    .line 245
    :cond_b
    invoke-static {}, Lhaibison/android/lockpattern/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->of(I)Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    return-object v0

    .line 145
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "`size` must be in range [1, `LockPatternView.MATRIX_SIZE`]"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static patternToSha1(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "ALP_42447968_12.0.0"

    const-string v2, "%0"

    :try_start_0
    const-string v3, "SHA-1"

    .line 115
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 116
    invoke-static {p0}, Lhaibison/android/lockpattern/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 118
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 119
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v5, 0x0

    .line 120
    move-object v6, v5

    check-cast v6, Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v5, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception p0

    .line 122
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 91
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 93
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 95
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    .line 96
    iget v5, v4, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    mul-int/lit8 v5, v5, 0x3

    iget v4, v4, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    add-int/2addr v5, v4

    int-to-byte v4, v5

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "ALP_42447968_12.0.0"

    .line 101
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-static {}, Lhaibison/android/lockpattern/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    const-string v1, "UTF-8"

    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 71
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 72
    aget-byte v2, p0, v1

    .line 73
    div-int/lit8 v3, v2, 0x3

    rem-int/lit8 v2, v2, 0x3

    invoke-static {v3, v2}, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->of(II)Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "ALP_42447968_12.0.0"

    .line 76
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method
