.class public Lorg/ocpsoft/prettytime/i18n/Resources_pl;
.super Ljava/util/ListResourceBundle;
.source "Resources_pl.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;
    }
.end annotation


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;

.field private static final polishPluralForms:I = 0x3

.field private static final tolerance:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v0

    .line 28
    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl;->OBJECTS:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_pl;->OBJECTS:[[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 3

    .line 118
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/JustNow;

    if-eqz v0, :cond_0

    .line 119
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_pl$1;

    invoke-direct {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$1;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_pl;)V

    return-object p1

    .line 156
    :cond_0
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Century;

    if-eqz v0, :cond_1

    .line 157
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v0, "wieki"

    const-string v1, "wiek\u00f3w"

    const-string v2, "wiek"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 159
    :cond_1
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Day;

    if-eqz v0, :cond_2

    .line 160
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v0, "dzie\u0144"

    const-string v1, "dni"

    filled-new-array {v0, v1, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 162
    :cond_2
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Decade;

    if-eqz v0, :cond_3

    .line 163
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v0, "dekady"

    const-string v1, "dekad"

    const-string v2, "dekad\u0119"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 165
    :cond_3
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Hour;

    if-eqz v0, :cond_4

    .line 166
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v0, "godziny"

    const-string v1, "godzin"

    const-string v2, "godzin\u0119"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 168
    :cond_4
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millennium;

    if-eqz v0, :cond_5

    .line 169
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v0, "milenia"

    const-string v1, "mileni\u00f3w"

    const-string v2, "milenium"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 171
    :cond_5
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millisecond;

    if-eqz v0, :cond_6

    .line 172
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v0, "milisekundy"

    const-string v1, "milisekund"

    const-string v2, "milisekund\u0119"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 174
    :cond_6
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Minute;

    if-eqz v0, :cond_7

    .line 175
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v0, "minuty"

    const-string v1, "minut"

    const-string v2, "minut\u0119"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 177
    :cond_7
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Month;

    if-eqz v0, :cond_8

    .line 178
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v0, "miesi\u0105ce"

    const-string v1, "miesi\u0119cy"

    const-string v2, "miesi\u0105c"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 180
    :cond_8
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Second;

    if-eqz v0, :cond_9

    .line 181
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v0, "sekundy"

    const-string v1, "sekund"

    const-string v2, "sekund\u0119"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 183
    :cond_9
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Week;

    if-eqz v0, :cond_a

    .line 184
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v0, "tygodnie"

    const-string v1, "tygodni"

    const-string v2, "tydzie\u0144"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 186
    :cond_a
    instance-of p1, p1, Lorg/ocpsoft/prettytime/units/Year;

    if-eqz p1, :cond_b

    .line 187
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;

    const-string v0, "lata"

    const-string v1, "lat"

    const-string v2, "rok"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_pl$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method
