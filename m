Return-Path: <usb-storage+bncBD6PZBNOUQGBBMNJ6PCAMGQE335HMCI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id DA039B252C9
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 20:08:50 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-30cceaaa4c5sf98960fac.2
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 11:08:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755108529; cv=pass;
        d=google.com; s=arc-20240605;
        b=JqIC8ypc45we3lh6YXT2/2rCeZzGzMwOkKHuRjJA39guERdx2zj6SNMN2il1v2fSan
         MUQ3Uv54emdsgmxqloYp4JnteFRpf8VJV/G2/aWRboiKlDrmzP8tomHQyycLc5p2XMrV
         40ovi0VF80OOEXO2sujKc7Oy/PEM93nnAWN3vbvad5Jj9CHEVA64jRbx05x8NKQjpJTL
         obw3AX8AObr4F5PfoAvuDkxawLL16Mns8pkYDQfHyH1CCARm5aprYx5TQLgt6ICKttH9
         buCHYBypIMFiF+wf6xE0y2AS3Cd9YQv+/hdikjEviqS97wqixvie69nOCxtzmPLDmZkn
         Mjew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:references:in-reply-to:user-agent:subject
         :cc:to:from:date:sender:dkim-signature;
        bh=rioWbm5mwvvRp6DzsW4/1pKdYeNgpceGztSMgp71xd8=;
        fh=FlvObV0iTF5EXITV5R+7l8NgD4gvWBjorI7Apwz3mwk=;
        b=D9Z+0A6xOS4cbrI3dAWIvmqwS5/sRmvXJCL3GbzptfKgSvXAs9EKeJopTTT2bdTXvF
         svGqafwkMm5ly1loWND6FMT2GCNp33hVo+ue4yEWBNKpmcuwGI/5xYhY/RgOlzvu7msl
         QK5WTjfiWQxff1dkoWhjrvuVuh2O1eeZY47PFCtnI0J2wUKVEmq9VG4tEfPDDpIMJfum
         r7d43KFKg6bNSTvEmtJvOerhyMeI5IFDest00tgBdgNs0TSTETVLVJvdkPpRqjSpfktQ
         ay+aOFo7t90LckLljX+7ZBJ6/DVRJlguJM/pN1RhndjcEhZZDJcug72aXPfrvuHSezmI
         nS+g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=OVZZA3Dp;
       spf=pass (google.com: domain of giorgitchankvetadze1997@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=giorgitchankvetadze1997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755108529; x=1755713329; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rioWbm5mwvvRp6DzsW4/1pKdYeNgpceGztSMgp71xd8=;
        b=clCfHeWlIM0njiEkI5rTCthzCU71pfdT1tOxyzCw70y4egVV2IlCKvtWjQHVsSiNeS
         tZqDApzn9g5GYinQk/ttRW00ZQXkA7ZZPBMbDYLekIkpvo28/MBveJnA/x9HGg448W/O
         20VBQwZ8WAOr5vnYDuIYdSXQD3z4AnxnxPSUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755108529; x=1755713329;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rioWbm5mwvvRp6DzsW4/1pKdYeNgpceGztSMgp71xd8=;
        b=Rm2tAzX3QXhbhmyGD/cqjNfdgcS0DNOZNK9lXuFRYYAGeaeAeBciQgZpp2mmJxSkZi
         OCnxh8Yw9EcngS97t9FL4ZjMFO5+LNBPqMFeBpndvN0iMHj9CDE6+0EFkZW3SwofDhGd
         sCGeAUCVZHe2u2Wbgr2yOImqrmxWpC8mGJVMKOJMFT5bjxse4rgm0QsHcU5d594UXLWO
         netR7rlCq8LOflrgO/J8uasuEE3JiU9EHm66gLFWt4IMlTuThjhNPm6ozrq12Wmjy2Is
         TM9McnRZsjArwl+vtcair0e2MKtU6WhTnwNzAwZRf7/rwvbYPnhkneGGhUEUg784x8fQ
         OASg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWlPfi6rOq1MSrePVDn4/gtaVSRzZgkGPAqIMGcQfJ26HoukkjcOruyJuZYDSxYdiErJ+yXFQ==@lfdr.de
X-Gm-Message-State: AOJu0Yw5zF1mjs0e74YOhLWK2ACwaQXSMODP/530FNK0/u1DADAjfcJP
	TrgujqueRfYb7gLK0qDDxfn5CpJeC6o+2UoTe5jn/1G85K0D7OWaHfuTlMaBfsN9FV4=
X-Google-Smtp-Source: AGHT+IFtI+JqdqOj5bh5K/p4Pug/g6HkwWhfOnK4yZHq/ehRaCGhrHrs5pTFX5ZSdHe08TZt1EFCjA==
X-Received: by 2002:a05:6870:b601:b0:29e:43ce:a172 with SMTP id 586e51a60fabf-30cd132c927mr117609fac.28.1755108529340;
        Wed, 13 Aug 2025 11:08:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZf6pBUC7Eg6IS4YRBc8cmJIcYP+rJ+ewpbUkpeB6NVd2w==
Received: by 2002:a05:6870:d249:b0:30b:76e3:703 with SMTP id
 586e51a60fabf-30cceb87e88ls66752fac.2.-pod-prod-06-us; Wed, 13 Aug 2025
 11:08:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWSMAFenC883hCH1yTqHOpmjMa58upHQb8du/8e9YZT9/987CWHOh5Pe3/8UAZu1j0R9j01Kzsq2TGPbQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:f06:b0:435:7380:5b7c with SMTP id 5614622812f47-435df81f88emr95320b6e.35.1755108528753;
        Wed, 13 Aug 2025 11:08:48 -0700 (PDT)
Received: by 2002:a05:600d:2:b0:456:11e5:963 with SMTP id 5b1f17b1804b1-459f522c46fms5e9;
        Wed, 13 Aug 2025 11:08:00 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWbauRf2pXtsNllXBfu1oERfQY7p8KKy/fdJFVoUD33tc+U+B4Ftbz6mt7/YA8fnvVgLh6m/XK1F5WjGA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:2211:b0:3b8:d79a:6a7d with SMTP id ffacd0b85a97d-3b9f032f511mr185295f8f.13.1755108478269;
        Wed, 13 Aug 2025 11:07:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755108478; cv=none;
        d=google.com; s=arc-20240605;
        b=WnzM8vU8ld+6ivuoXw18sCv6yc+Y7RjMhsXlvYBVXVbLT1SHCkNMiNNeJnZFGqsEBp
         TDL59laDoyhsaV2U/JE+lMBv8HsinDfFmYDroR9AcOaCmlWXEgbHVqFvB+cQGxHKVDd1
         qEymjROXDwMpibl494XQmzBrwQ9wGmFHHnTsldrhmy9A/X9U1KAKet5elJ3fgx0ctsj8
         rCCYeVTFPySqimRtoSfmQC+WCCY4dbNj6OCWJ9cwNLMDGnbNLH0LQrrAQGopvdWu3Xoc
         ICI7XrUPHKu5Hq3KlmaAacQmSCMqUyJWs3JAGQ7jfhuo39Ce1NyjsoObdyyJUp8xhhDG
         2W3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:dkim-signature;
        bh=OqJ6dQirTOxgKSo8cDOa54CU7ZZmJKjXmv1H+9zMNiM=;
        fh=cSOvCgfLFAVpMhpfkE3B/l+7KLaXOPl+EC581uhvc2M=;
        b=fUnj9kh24i0HVA+KRdvFVXWfsHOQH5yplDQ8Rn2dOITx/0j7pUEn6AHtBNGdxfNaQK
         zwdnzAVCuLJ9prVTwW9EPlj++DG0Bow3H6Gx0LDZBTArSazf+MoroqAaUEfprL9aEavw
         uy1O5n2RKCij7d2k1VX4w0HWZ3P4Mw+14TLqc/yNDcmbVLfdSVcOhPThJYzuxr2woDSs
         HvHCttKaGapLMc2NCVZt1fZ/kT+BfMpdz5FFey8iE2nd5zc0VOPk92dpHCD0SGJrVue9
         QO5hPqJTrAfQqvm2El8psLs4f5DbJM7bgi/yzR8akLo0sIN7oFzTOrgOGi8//ZfveR1T
         8J0w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=OVZZA3Dp;
       spf=pass (google.com: domain of giorgitchankvetadze1997@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=giorgitchankvetadze1997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ffacd0b85a97d-3b79c4dd0fcsor3758029f8f.1.2025.08.13.11.07.58
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 13 Aug 2025 11:07:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of giorgitchankvetadze1997@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVRQdWctCKx0ay8rUvwM2aGtLdgQ6nCVpaqTH/xXTIeGG0d2AzoiCc7wSFcyjQaH46SEvywtKZ5OQu0OA==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncvSE4V78QrH4bvS6uWsR/t38oZ/WEHvwgr7VQKaD2L4Sv9zyopKojCmMXvqzew
	tKnqEZZZ5UWJIcu5U0ESzZVUOxfazMuScuIKYdW2Yd5qE5xTh/zjoA2MgHe5z/skoObfa070Smv
	Cb2TnJjoYqlNckQlAt5654vSMpsyrzJOwFs825JS7/h+iA6hhGOso3Il+bJKnD8XBAiLWvTg8Uj
	4aOxg0B50O9t3kZkpwZBAEPL7/8LkUuIvDEKcO0KNrSmlk61Nc1cy9yBXngb2ssNXwgo93dVS0q
	O7y24ZOAGNwEk54tEbxN+yynmTCqMuddMvIWgeKjq+7+nSdcPFcNW7W9z+WFwOHSlmeA3BjG8eF
	F/pq+CyI4OLRHNYcrKcQulZs1uuEjOKxp82WuKg==
X-Received: by 2002:a05:6000:2505:b0:3b7:8da6:1bc2 with SMTP id ffacd0b85a97d-3b9edf2f226mr95385f8f.13.1755108477421;
        Wed, 13 Aug 2025 11:07:57 -0700 (PDT)
Received: from [127.0.0.1] ([185.115.6.10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c475067sm47845175f8f.58.2025.08.13.11.07.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 11:07:57 -0700 (PDT)
Date: Wed, 13 Aug 2025 22:07:52 +0400
From: Giorgi <giorgitchankvetadze1997@gmail.com>
To: Zenm Chen <zenmchen@gmail.com>, stern@rowland.harvard.edu
CC: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, pkshih@realtek.com, rtl8821cerfe2@gmail.com,
 stable@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 usbwifi2024@gmail.com, zenmchen@gmail.com
Subject: [usb-storage] Re: [PATCH] USB: storage: Ignore driver CD mode for
 Realtek multi-mode Wi-Fi dongles
User-Agent: Thunderbird for Android
In-Reply-To: <20250813175313.2585-1-zenmchen@gmail.com>
References: <ff043574-e479-4a56-86a4-feaa35877d1a@rowland.harvard.edu> <20250813175313.2585-1-zenmchen@gmail.com>
Message-ID: <8560A878-1EAE-4FE3-B96E-2916E27F90F5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary=----C6MKCP71FA1XTZYWEJKSZP6BV4WXTM
Content-Transfer-Encoding: 7bit
X-Original-Sender: giorgitchankvetadze1997@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=OVZZA3Dp;       spf=pass
 (google.com: domain of giorgitchankvetadze1997@gmail.com designates
 209.85.220.41 as permitted sender) smtp.mailfrom=giorgitchankvetadze1997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

------C6MKCP71FA1XTZYWEJKSZP6BV4WXTM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Maybe we could only add US_FL_IGNORE_DEVICE for the exact Realtek-based mod=
els (Mercury MW310UH, D-Link AX9U, etc.) that fail with usb_modeswitch.

This avoids disabling access to the emulated CD for unrelated devices.

On August 13, 2025 9:53:12 PM GMT+04:00, Zenm Chen <zenmchen@gmail.com> wro=
te:
>Alan Stern <stern@rowland.harvard.edu> =E6=96=BC 2025=E5=B9=B48=E6=9C=8814=
=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=8812:58=E5=AF=AB=E9=81=93=EF=
=BC=9A
>>
>> On Thu, Aug 14, 2025 at 12:24:15AM +0800, Zenm Chen wrote:
>> > Many Realtek USB Wi-Fi dongles released in recent years have two modes=
:
>> > one is driver CD mode which has Windows driver onboard, another one is
>> > Wi-Fi mode. Add the US_FL_IGNORE_DEVICE quirk for these multi-mode dev=
ices.
>> > Otherwise, usb_modeswitch may fail to switch them to Wi-Fi mode.
>>
>> There are several other entries like this already in the unusual_devs.h
>> file.  But I wonder if we really still need them.  Shouldn't the
>> usb_modeswitch program be smart enough by now to know how to handle
>> these things?
>
>Hi Alan,
>
>Thanks for your review and reply.
>
>Without this patch applied, usb_modeswitch cannot switch my Mercury MW310U=
H
>into Wi-Fi mode [1]. I also ran into a similar problem like [2] with D-Lin=
k
>AX9U, so I believe this patch is needed.
>
>>
>> In theory, someone might want to access the Windows driver on the
>> emulated CD.  With this quirk, they wouldn't be able to.
>>
>
>Actually an emulated CD doesn't appear when I insert these 2 Wi-Fi dongles=
 into
>my Linux PC, so users cannot access that Windows driver even if this patch=
 is not=20
>applied.
>
>> Alan Stern
>
>[1] https://drive.google.com/file/d/1YfWUTxKnvSeu1egMSwcF-memu3Kis8Mg/view=
?usp=3Ddrive_link
>
>[2] https://github.com/morrownr/rtw89/issues/10
>

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/8560A878-1EAE-4FE3-B96E-2916E27F90F5%40gmail.co=
m.

------C6MKCP71FA1XTZYWEJKSZP6BV4WXTM
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"auto">Maybe we could only add US_FL_IG=
NORE_DEVICE for the exact Realtek-based models (Mercury MW310UH, D-Link AX9=
U, etc.) that fail with usb_modeswitch.<br><br>This avoids disabling access=
 to the emulated CD for unrelated devices.</div><br><br><div class=3D"gmail=
_quote"><div dir=3D"auto">On August 13, 2025 9:53:12 PM GMT+04:00, Zenm Che=
n &lt;zenmchen@gmail.com&gt; wrote:</div><blockquote class=3D"gmail_quote" =
style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 20=
4); padding-left: 1ex;">
<pre class=3D"k9mail"><div dir=3D"auto">Alan Stern &lt;stern@rowland.harvar=
d.edu&gt; =E6=96=BC 2025=E5=B9=B48=E6=9C=8814=E6=97=A5 =E9=80=B1=E5=9B=9B =
=E4=B8=8A=E5=8D=8812:58=E5=AF=AB=E9=81=93=EF=BC=9A<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px sol=
id #729fcf; padding-left: 1ex;"><div dir=3D"auto"><br> On Thu, Aug 14, 2025=
 at 12:24:15AM +0800, Zenm Chen wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #ad7fa8; =
padding-left: 1ex;"><div dir=3D"auto">Many Realtek USB Wi-Fi dongles releas=
ed in recent years have two modes:<br>one is driver CD mode which has Windo=
ws driver onboard, another one is<br>Wi-Fi mode. Add the US_FL_IGNORE_DEVIC=
E quirk for these multi-mode devices.<br>Otherwise, usb_modeswitch may fail=
 to switch them to Wi-Fi mode.<br></div></blockquote><div dir=3D"auto"><br>=
 There are several other entries like this already in the unusual_devs.h<br=
> file.  But I wonder if we really still need them.  Shouldn't the<br> usb_=
modeswitch program be smart enough by now to know how to handle<br> these t=
hings?<br></div></blockquote><div dir=3D"auto"><br>Hi Alan,<br><br>Thanks f=
or your review and reply.<br><br>Without this patch applied, usb_modeswitch=
 cannot switch my Mercury MW310UH<br>into Wi-Fi mode [1]. I also ran into a=
 similar problem like [2] with D-Link<br>AX9U, so I believe this patch is n=
eeded.<br><br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0pt =
0pt 1ex 0.8ex; border-left: 1px solid #729fcf; padding-left: 1ex;"><div dir=
=3D"auto"><br> In theory, someone might want to access the Windows driver o=
n the<br> emulated CD.  With this quirk, they wouldn't be able to.<br><br><=
/div></blockquote><div dir=3D"auto"><br>Actually an emulated CD doesn't app=
ear when I insert these 2 Wi-Fi dongles into<br>my Linux PC, so users canno=
t access that Windows driver even if this patch is not <br>applied.<br><br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex;=
 border-left: 1px solid #729fcf; padding-left: 1ex;"><div dir=3D"auto">Alan=
 Stern<br></div></blockquote><div dir=3D"auto"><br>[1] <a href=3D"https://d=
rive.google.com/file/d/1YfWUTxKnvSeu1egMSwcF-memu3Kis8Mg/view?usp=3Ddrive_l=
ink">https://drive.google.com/file/d/1YfWUTxKnvSeu1egMSwcF-memu3Kis8Mg/view=
?usp=3Ddrive_link</a><br><br>[2] <a href=3D"https://github.com/morrownr/rtw=
89/issues/10">https://github.com/morrownr/rtw89/issues/10</a><br><br></div>=
</pre></blockquote></div></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/8560A878-1EAE-4FE3-B96E-2916E27F90F5=
%40gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.=
com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8560A878-1EAE-4FE3-B96E-=
2916E27F90F5%40gmail.com</a>.<br />

------C6MKCP71FA1XTZYWEJKSZP6BV4WXTM--
