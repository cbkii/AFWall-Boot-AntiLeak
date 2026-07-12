.class public final Lorg/xbill/DNS/dnssec/R;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field private static rb:Ljava/util/ResourceBundle;

.field private static useNeutral:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/xbill/DNS/dnssec/R;->useNeutral:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0, p1}, Lorg/xbill/DNS/dnssec/R;->getNeutral(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, Lorg/xbill/DNS/dnssec/R;->rb:Ljava/util/ResourceBundle;

    if-nez v0, :cond_1

    const-string v0, "messages"

    .line 52
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/dnssec/R;->rb:Ljava/util/ResourceBundle;

    :cond_1
    sget-object v0, Lorg/xbill/DNS/dnssec/R;->rb:Ljava/util/ResourceBundle;

    .line 55
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 57
    :catch_0
    invoke-static {p0, p1}, Lorg/xbill/DNS/dnssec/R;->getNeutral(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNeutral(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    const-string v3, ":"

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setBundle(Ljava/util/ResourceBundle;)V
    .locals 0

    sput-object p0, Lorg/xbill/DNS/dnssec/R;->rb:Ljava/util/ResourceBundle;

    return-void
.end method

.method public static setUseNeutralMessages(Z)V
    .locals 0

    sput-boolean p0, Lorg/xbill/DNS/dnssec/R;->useNeutral:Z

    return-void
.end method
