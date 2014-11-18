.class public abstract Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;
.super Landroid/os/Binder;
.source "IDolbyMobileSystemInterface.java"

# interfaces
.implements Landroid/media/dolby/IDolbyMobileSystemInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dolby/IDolbyMobileSystemInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/dolby/IDolbyMobileSystemInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.dolby.IDolbyMobileSystemInterface"

.field static final TRANSACTION_currentPreset:I = 0x3

.field static final TRANSACTION_getEQBandCenterFreq:I = 0xe

.field static final TRANSACTION_getEQBandLevel:I = 0xf

.field static final TRANSACTION_getEQBandLevelRange:I = 0xc

.field static final TRANSACTION_getEffectOn:I = 0x1

.field static final TRANSACTION_getNBBoostLevel:I = 0x15

.field static final TRANSACTION_getNBBoostLevelRange:I = 0x14

.field static final TRANSACTION_getNumberOfEQBands:I = 0xd

.field static final TRANSACTION_getPresetCategory:I = 0x6

.field static final TRANSACTION_getRSLevel:I = 0x12

.field static final TRANSACTION_getRSLevelRange:I = 0x11

.field static final TRANSACTION_getSBLevel:I = 0x18

.field static final TRANSACTION_getSBLevelRange:I = 0x17

.field static final TRANSACTION_numPresets:I = 0x7

.field static final TRANSACTION_numPresetsPerCategory:I = 0x8

.field static final TRANSACTION_presetName:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0xa

.field static final TRANSACTION_selectCustomFromOtherPreset:I = 0x1a

.field static final TRANSACTION_selectPreset:I = 0x4

.field static final TRANSACTION_setEQBandLevel:I = 0x10

.field static final TRANSACTION_setEffectOn:I = 0x2

.field static final TRANSACTION_setNBBoostLevel:I = 0x16

.field static final TRANSACTION_setPresetCategory:I = 0x5

.field static final TRANSACTION_setRSLevel:I = 0x13

.field static final TRANSACTION_setSBLevel:I = 0x19

.field static final TRANSACTION_storeCustomPreset:I = 0x1b

.field static final TRANSACTION_unregisterCallback:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/dolby/IDolbyMobileSystemInterface;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/media/dolby/IDolbyMobileSystemInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 297
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getEffectOn()Z

    move-result v3

    .line 49
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v3           #_result:Z
    :sswitch_2
    const-string v6, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    .line 58
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setEffectOn(Z)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v4

    .line 57
    goto :goto_1

    .line 64
    :sswitch_3
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->currentPreset()I

    move-result v3

    .line 66
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v3           #_result:I
    :sswitch_4
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->selectPreset(I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setPresetCategory(I)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getPresetCategory()I

    move-result v3

    .line 92
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v3           #_result:I
    :sswitch_7
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->numPresets()I

    move-result v3

    .line 100
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v3           #_result:I
    :sswitch_8
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->numPresetsPerCategory(I)I

    move-result v3

    .line 110
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_9
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->presetName(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    .end local v0           #_arg0:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/dolby/IDolbyMobileServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    move-result-object v0

    .line 129
    .local v0, _arg0:Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->registerCallback(Landroid/media/dolby/IDolbyMobileServiceCallbacks;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 135
    .end local v0           #_arg0:Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    :sswitch_b
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/dolby/IDolbyMobileServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    move-result-object v0

    .line 138
    .restart local v0       #_arg0:Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->unregisterCallback(Landroid/media/dolby/IDolbyMobileServiceCallbacks;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 144
    .end local v0           #_arg0:Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    :sswitch_c
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getEQBandLevelRange()[I

    move-result-object v3

    .line 146
    .local v3, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 152
    .end local v3           #_result:[I
    :sswitch_d
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getNumberOfEQBands()I

    move-result v3

    .line 154
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v3           #_result:I
    :sswitch_e
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getEQBandCenterFreq(I)I

    move-result v3

    .line 164
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_f
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getEQBandLevel(II)I

    move-result v3

    .line 176
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_10
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setEQBandLevel(III)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 195
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :sswitch_11
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getRSLevelRange()[I

    move-result-object v3

    .line 197
    .local v3, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 203
    .end local v3           #_result:[I
    :sswitch_12
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 206
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getRSLevel(I)I

    move-result v3

    .line 207
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 213
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_13
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setRSLevel(II)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 224
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_14
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getNBBoostLevelRange()[I

    move-result-object v3

    .line 226
    .local v3, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 232
    .end local v3           #_result:[I
    :sswitch_15
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 235
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getNBBoostLevel(I)I

    move-result v3

    .line 236
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 242
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_16
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 247
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setNBBoostLevel(II)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 253
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_17
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getSBLevelRange()[I

    move-result-object v3

    .line 255
    .local v3, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 261
    .end local v3           #_result:[I
    :sswitch_18
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 264
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getSBLevel(I)I

    move-result v3

    .line 265
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_19
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 276
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setSBLevel(II)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 282
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_1a
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 285
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->selectCustomFromOtherPreset(I)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 291
    .end local v0           #_arg0:I
    :sswitch_1b
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->storeCustomPreset()V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
