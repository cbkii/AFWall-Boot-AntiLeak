.class public Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
.super Ljava/lang/Object;
.source "SimpleTimeFormat.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/TimeFormat;
.implements Lorg/ocpsoft/prettytime/LocaleAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ocpsoft/prettytime/TimeFormat;",
        "Lorg/ocpsoft/prettytime/LocaleAware<",
        "Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final NEGATIVE:Ljava/lang/String; = "-"

.field private static final PATTERN_MULTIPLE_WHITESPACES:Ljava/util/regex/Pattern;

.field public static final QUANTITY:Ljava/lang/String; = "%n"

.field public static final SIGN:Ljava/lang/String; = "%s"

.field public static final UNIT:Ljava/lang/String; = "%u"


# instance fields
.field private futurePluralName:Ljava/lang/String;

.field private futurePrefix:Ljava/lang/String;

.field private futureSingularName:Ljava/lang/String;

.field private futureSuffix:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private pastPluralName:Ljava/lang/String;

.field private pastPrefix:Ljava/lang/String;

.field private pastSingularName:Ljava/lang/String;

.field private pastSuffix:Ljava/lang/String;

.field private pattern:Ljava/lang/String;

.field private pluralName:Ljava/lang/String;

.field private roundingTolerance:I

.field private singularName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s{2,}"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->PATTERN_MULTIPLE_WHITESPACES:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->singularName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pluralName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSingularName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePluralName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSingularName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPluralName:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePrefix:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSuffix:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPrefix:Ljava/lang/String;

    iput-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSuffix:Ljava/lang/String;

    const/16 v0, 0x32

    iput v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->roundingTolerance:I

    return-void
.end method

.method private applyPattern(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 4

    .line 106
    invoke-virtual {p0, p3, p4}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->getPattern(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "%d"

    if-eqz v0, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    .line 108
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v2, v1

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 109
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    const-string p4, "%n"

    .line 111
    invoke-virtual {p1, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "%u"

    .line 112
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private format(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;
    .locals 2

    .line 97
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->getSign(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->getGramaticallyCorrectName(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->getQuantity(Lorg/ocpsoft/prettytime/Duration;Z)J

    move-result-wide p1

    .line 101
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->applyPattern(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPluralName(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 1

    .line 166
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInFuture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePluralName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSingularName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePluralName:Ljava/lang/String;

    return-object p1

    .line 168
    :cond_0
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPluralName:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSingularName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPluralName:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pluralName:Ljava/lang/String;

    return-object p1
.end method

.method private getSign(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 4

    .line 148
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getQuantity()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const-string p1, "-"

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getSingularName(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 1

    .line 156
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInFuture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSingularName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSingularName:Ljava/lang/String;

    return-object p1

    .line 158
    :cond_0
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSingularName:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSingularName:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->singularName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result p1

    const-string v1, " "

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPrefix:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePrefix:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object p1, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->PATTERN_MULTIPLE_WHITESPACES:Ljava/util/regex/Pattern;

    .line 85
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, p1, v0}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getGramaticallyCorrectName(Lorg/ocpsoft/prettytime/Duration;Z)Ljava/lang/String;
    .locals 1

    .line 133
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->getSingularName(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->isPlural(Lorg/ocpsoft/prettytime/Duration;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->getPluralName(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method protected getPattern(J)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pattern:Ljava/lang/String;

    return-object p1
.end method

.method protected getQuantity(Lorg/ocpsoft/prettytime/Duration;Z)J
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->roundingTolerance:I

    .line 128
    invoke-interface {p1, p2}, Lorg/ocpsoft/prettytime/Duration;->getQuantityRounded(I)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getQuantity()J

    move-result-wide p1

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected isPlural(Lorg/ocpsoft/prettytime/Duration;Z)Z
    .locals 3

    .line 142
    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->getQuantity(Lorg/ocpsoft/prettytime/Duration;Z)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setFuturePluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .locals 0

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePluralName:Ljava/lang/String;

    return-object p0
.end method

.method public setFuturePrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .locals 0

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setFutureSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .locals 0

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSingularName:Ljava/lang/String;

    return-object p0
.end method

.method public setFutureSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .locals 0

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setLocale(Ljava/util/Locale;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    move-result-object p1

    return-object p1
.end method

.method public setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .locals 0

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public setPastPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .locals 0

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPluralName:Ljava/lang/String;

    return-object p0
.end method

.method public setPastPrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .locals 0

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setPastSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .locals 0

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSingularName:Ljava/lang/String;

    return-object p0
.end method

.method public setPastSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .locals 0

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .locals 0

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method public setPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .locals 0

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pluralName:Ljava/lang/String;

    return-object p0
.end method

.method public setRoundingTolerance(I)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .locals 0

    iput p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->roundingTolerance:I

    return-object p0
.end method

.method public setSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .locals 0

    iput-object p1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->singularName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SimpleTimeFormat [pattern="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", futurePrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futurePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", futureSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->futureSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pastPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pastSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->pastSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roundingTolerance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->roundingTolerance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
