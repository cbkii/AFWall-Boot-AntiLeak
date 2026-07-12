.class public Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;
.super Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
.source "ResourcesTimeFormat.java"


# instance fields
.field private override:Lorg/ocpsoft/prettytime/TimeFormat;

.field private overrideResourceBundle:Ljava/lang/String;

.field private final unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;


# direct methods
.method public constructor <init>(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;-><init>()V

    iput-object p1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    return-void
.end method

.method public constructor <init>(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;-><init>()V

    iput-object p1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    iput-object p2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->overrideResourceBundle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    if-nez v0, :cond_0

    .line 100
    invoke-super {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/ocpsoft/prettytime/TimeFormat;->decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    if-nez v0, :cond_0

    .line 106
    invoke-super {p0, p1, p2}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/ocpsoft/prettytime/TimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    if-nez v0, :cond_0

    .line 112
    invoke-super {p0, p1}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    if-nez v0, :cond_0

    .line 118
    invoke-super {p0, p1}, Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic setLocale(Ljava/util/Locale;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;

    move-result-object p1

    return-object p1
.end method

.method public setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;
    .locals 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->overrideResourceBundle:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    .line 48
    invoke-virtual {v0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceBundleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 51
    :cond_1
    instance-of p1, v0, Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;

    if-eqz p1, :cond_2

    .line 52
    move-object p1, v0

    check-cast p1, Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-interface {p1, v1}, Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;->getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object p1

    if-eqz p1, :cond_3

    iput-object p1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->override:Lorg/ocpsoft/prettytime/TimeFormat;

    if-nez p1, :cond_4

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Pattern"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setPattern(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FuturePrefix"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setFuturePrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FutureSuffix"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setFutureSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PastPrefix"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setPastPrefix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PastSuffix"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setPastSuffix(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SingularName"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PluralName"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;

    .line 72
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FuturePluralName"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setFuturePluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :catch_1
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FutureSingularName"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setFutureSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 82
    :catch_2
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PastPluralName"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setPastPluralName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 87
    :catch_3
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->unit:Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    invoke-virtual {v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PastSingularName"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setPastSingularName(Ljava/lang/String;)Lorg/ocpsoft/prettytime/format/SimpleTimeFormat;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_4
    return-object p0
.end method
