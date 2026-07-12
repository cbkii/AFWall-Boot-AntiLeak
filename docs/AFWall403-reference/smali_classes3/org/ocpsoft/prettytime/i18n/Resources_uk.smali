.class public Lorg/ocpsoft/prettytime/i18n/Resources_uk;
.super Ljava/util/ListResourceBundle;
.source "Resources_uk.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;
    }
.end annotation


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;

.field private static final slavicPluralForms:I = 0x3

.field private static final tolerance:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v0

    .line 34
    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk;->OBJECTS:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_uk;->OBJECTS:[[Ljava/lang/Object;

    return-object v0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 3

    .line 129
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/JustNow;

    if-eqz v0, :cond_0

    .line 130
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_uk$1;

    invoke-direct {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$1;-><init>(Lorg/ocpsoft/prettytime/i18n/Resources_uk;)V

    return-object p1

    .line 167
    :cond_0
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Century;

    if-eqz v0, :cond_1

    .line 168
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v0, "\u0441\u0442\u043e\u043b\u0456\u0442\u0442\u044c"

    const-string v1, "\u0441\u0442\u043e\u043b\u0456\u0442\u0442\u044f"

    filled-new-array {v1, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 170
    :cond_1
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Day;

    if-eqz v0, :cond_2

    .line 171
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v0, "\u0434\u043d\u0456"

    const-string v1, "\u0434\u043d\u0456\u0432"

    const-string v2, "\u0434\u0435\u043d\u044c"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 173
    :cond_2
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Decade;

    if-eqz v0, :cond_3

    .line 174
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v0, "\u0434\u0435\u0441\u044f\u0442\u0438\u043b\u0456\u0442\u044c"

    const-string v1, "\u0434\u0435\u0441\u044f\u0442\u0438\u043b\u0456\u0442\u0442\u044f"

    filled-new-array {v1, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 176
    :cond_3
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Hour;

    if-eqz v0, :cond_4

    .line 177
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v0, "\u0433\u043e\u0434\u0438\u043d\u0438"

    const-string v1, "\u0433\u043e\u0434\u0438\u043d"

    const-string v2, "\u0433\u043e\u0434\u0438\u043d\u0443"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 179
    :cond_4
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millennium;

    if-eqz v0, :cond_5

    .line 180
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v0, "\u0442\u0438\u0441\u044f\u0447\u043e\u043b\u0456\u0442\u044c"

    const-string v1, "\u0442\u0438\u0441\u044f\u0447\u043e\u043b\u0456\u0442\u0442\u044f"

    filled-new-array {v1, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 182
    :cond_5
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Millisecond;

    if-eqz v0, :cond_6

    .line 183
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v0, "\u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const-string v1, "\u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434"

    const-string v2, "\u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 185
    :cond_6
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Minute;

    if-eqz v0, :cond_7

    .line 186
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v0, "\u0445\u0432\u0438\u043b\u0438\u043d\u0438"

    const-string v1, "\u0445\u0432\u0438\u043b\u0438\u043d"

    const-string v2, "\u0445\u0432\u0438\u043b\u0438\u043d\u0443"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 188
    :cond_7
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Month;

    if-eqz v0, :cond_8

    .line 189
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v0, "\u043c\u0456\u0441\u044f\u0446\u0456"

    const-string v1, "\u043c\u0456\u0441\u044f\u0446\u0456\u0432"

    const-string v2, "\u043c\u0456\u0441\u044f\u0446\u044c"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 191
    :cond_8
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Second;

    if-eqz v0, :cond_9

    .line 192
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v0, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const-string v1, "\u0441\u0435\u043a\u0443\u043d\u0434"

    const-string v2, "\u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 194
    :cond_9
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Week;

    if-eqz v0, :cond_a

    .line 195
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v0, "\u0442\u0438\u0436\u043d\u0456"

    const-string v1, "\u0442\u0438\u0436\u043d\u0456\u0432"

    const-string v2, "\u0442\u0438\u0436\u0434\u0435\u043d\u044c"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 197
    :cond_a
    instance-of p1, p1, Lorg/ocpsoft/prettytime/units/Year;

    if-eqz p1, :cond_b

    .line 198
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;

    const-string v0, "\u0440\u043e\u043a\u0438"

    const-string v1, "\u0440\u043e\u043a\u0456\u0432"

    const-string v2, "\u0440\u0456\u043a"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;-><init>([Ljava/lang/String;)V

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method
