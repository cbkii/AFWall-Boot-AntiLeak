.class public final Lorg/xbill/DNS/Section;
.super Ljava/lang/Object;
.source "Section.java"


# static fields
.field public static final ADDITIONAL:I = 0x3

.field public static final ANSWER:I = 0x1

.field public static final AUTHORITY:I = 0x2

.field public static final PREREQ:I = 0x1

.field public static final QUESTION:I = 0x0

.field public static final UPDATE:I = 0x2

.field public static final ZONE:I

.field private static final longSections:[Ljava/lang/String;

.field private static final sections:Lorg/xbill/DNS/Mnemonic;

.field private static final updateSections:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 35
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Message Section"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    sput-object v3, Lorg/xbill/DNS/Section;->longSections:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lorg/xbill/DNS/Section;->updateSections:[Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    const/4 v4, 0x1

    .line 41
    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    const-string v5, "qd"

    const/4 v6, 0x0

    .line 43
    invoke-virtual {v0, v6, v5}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v5, "an"

    .line 44
    invoke-virtual {v0, v4, v5}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v5, "au"

    const/4 v7, 0x2

    .line 45
    invoke-virtual {v0, v7, v5}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v5, "ad"

    .line 46
    invoke-virtual {v0, v2, v5}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v0, "QUESTIONS"

    aput-object v0, v3, v6

    const-string v0, "ANSWERS"

    aput-object v0, v3, v4

    const-string v0, "AUTHORITY RECORDS"

    aput-object v0, v3, v7

    const-string v0, "ADDITIONAL RECORDS"

    aput-object v0, v3, v2

    const-string v3, "ZONE"

    aput-object v3, v1, v6

    const-string v3, "PREREQUISITES"

    aput-object v3, v1, v4

    const-string v3, "UPDATE RECORDS"

    aput-object v3, v1, v7

    aput-object v0, v1, v2

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(I)V
    .locals 1

    sget-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    .line 89
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    return-void
.end method

.method public static longString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    .line 68
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    sget-object v0, Lorg/xbill/DNS/Section;->longSections:[Ljava/lang/String;

    .line 69
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    .line 63
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    .line 74
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    sget-object v0, Lorg/xbill/DNS/Section;->updateSections:[Ljava/lang/String;

    .line 75
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    .line 80
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
