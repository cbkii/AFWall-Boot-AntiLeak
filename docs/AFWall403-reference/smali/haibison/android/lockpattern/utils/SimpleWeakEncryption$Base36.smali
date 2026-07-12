.class public Lhaibison/android/lockpattern/utils/SimpleWeakEncryption$Base36;
.super Ljava/lang/Object;
.source "SimpleWeakEncryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhaibison/android/lockpattern/utils/SimpleWeakEncryption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base36"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toBase36([B)Ljava/lang/String;
    .locals 1

    .line 251
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    const/16 p0, 0x24

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toBytes(Ljava/lang/String;)[B
    .locals 2

    .line 262
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x24

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
