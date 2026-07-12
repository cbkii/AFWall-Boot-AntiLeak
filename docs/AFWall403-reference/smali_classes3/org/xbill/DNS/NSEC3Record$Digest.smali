.class public Lorg/xbill/DNS/NSEC3Record$Digest;
.super Ljava/lang/Object;
.source "NSEC3Record.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/NSEC3Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# static fields
.field public static final SHA1:I = 0x1

.field private static final digests:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "DNSSEC NSEC3 Hash Algorithms"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/NSEC3Record$Digest;->digests:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SHA-1"

    .line 41
    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/NSEC3Record$Digest;->digests:Lorg/xbill/DNS/Mnemonic;

    .line 46
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/xbill/DNS/NSEC3Record$Digest;->digests:Lorg/xbill/DNS/Mnemonic;

    .line 57
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
