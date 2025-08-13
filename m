Return-Path: <usb-storage+bncBD6PZBNOUQGBBQ5L6PCAMGQEYSLVGAI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x446.google.com (mail-wr1-x446.google.com [IPv6:2a00:1450:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B59B252D6
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 20:13:25 +0200 (CEST)
Received: by mail-wr1-x446.google.com with SMTP id ffacd0b85a97d-3b9d41bda7bsf68712f8f.0
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 11:13:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755108804; cv=pass;
        d=google.com; s=arc-20240605;
        b=jEVwPyXVhc5OHO3xBLV+L+0+uoFwd8ysS1rVBW8g1tQxUIIzMpS8nMzjkt4+j+gY10
         jJtnB2giHKeyv4xyTfUOXfVzjMvEYkcm5bAnWN2Q+X3KoIscQErZZrdCie6Bxqu+XJPB
         03j3lCvdHSJWtfWu5LDPZQd88MNZ2YC9vW4if9bGh8Z+doZAwB6duBwH9BBvWSENXmm2
         Fo9r7wdc96ggZqJ9tP56vcawGeXo6N8gPwxbjbXihcYiSKf+rIP9SAK6IAlc3HL8wgAV
         oZ53krNRUbmedUrYGXZ2LRrxHcYUpfkOsiVq5HEOEowRK8LiB1EyPEEf0sw8l8XboCLh
         tRtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:references:in-reply-to:user-agent:subject
         :cc:to:from:date:sender:dkim-signature;
        bh=6C4oLl6aM4XLNEpb31FbJLL8eFvkfWVyFmX+6YsAfoo=;
        fh=/DNpPbTnZk1dpIfPtTI19QfXQ1pYa8GhRLpMztqWqbw=;
        b=MkbbT/kuIquygGaBkD9X4iV2PdlQDiOEU3d0Gm7/EyIaVvHEqJRfmZbADOeGPnJIf2
         7CY1i+lZM6MRsBTiJfkOJkDfF/sn6/ev715UAGVItnKQqcLH0claookwY0tJsWlCcXHv
         HG1fyrxjjw+WAby8JJRhIP8mdCBMJc8yLRSFziDCgsu5riL8a0HaNosmUs0UU3rGo6pL
         XOF/8OVxmVTPxo0R0b6YnIeb9QUluK+6i9xGjlwFNVj7XjOVpWvwDX4OS4HNhWs8oreB
         xXfL4z5YF3uY4WEHXIcoWxBg6ZZJF9Cgdwxun8ikX5yUMDwKyJDAKfbczmaUgyeVY5GT
         IX+w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=iTEVS3Uk;
       spf=pass (google.com: domain of giorgitchankvetadze1997@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=giorgitchankvetadze1997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755108804; x=1755713604; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6C4oLl6aM4XLNEpb31FbJLL8eFvkfWVyFmX+6YsAfoo=;
        b=CDYoFJCJ7Hii7Qr9Zb1xiGSU/dauTNVNpzQmatXpnykE8PHn7BcAwJ+CuxSXQGI2Cz
         qfD+Q8p3wbKiSP+w+Vs11OJQ0W0PUF4Sx/w2RmgTedudJ0Y7XEjV3MAhUo61cXjsWhMC
         bD4WYN5A2XosJZDE7a7XIhkbB2IeYiPnCA26Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755108804; x=1755713604;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6C4oLl6aM4XLNEpb31FbJLL8eFvkfWVyFmX+6YsAfoo=;
        b=C5suUBAijNlUehp4vxhWIQWlPmAfpLbC5O/JbeXij4LRx7mRkWgYngCYWwm2vyej+x
         /s+VE4hNMMy1h33rqyiGTQ/8d//P2emiq2atcTthO8F6MKGZHx0i7onIGqUcCw8c+RIQ
         2nQ3g7+vBC9kAHOLPejCdHRZzQhvrVLQMVdHBQUzE3HEKkxgdaEtVKwzKGmGiNIgzNeR
         E6P7pVRJmCNySXQ7FREckZUcKFO/uRRU1cjNPZu3XphuK+StxkUfxvZjLZitlbpskkmd
         Ha1Fzthe7UBZ6iGgYvHnRF/KOZpeDH4Yl+LyGGX1dCTLl7HbgX0HKrWvmUip4UiodF8M
         mW2A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXHKzJeL0UcCpDSlR9+C97aVln/B0pJWkvp21AN5hh/sWLEeD6wh4PPBpIk+wBjvqVU3f5Mdw==@lfdr.de
X-Gm-Message-State: AOJu0Yw8yNd2q+fqV2cA+mi4kM1YvEFUdFuKfi2jCxiyHWNQo5i/7m8W
	Xb+2GQKLtjB/LGZGaxLBJSXKN/VYaqmzugmgbFA1LVC3PuAroAcG/NVt3+/fikuTKmM=
X-Google-Smtp-Source: AGHT+IEF9R65pN9iYRNKgegLCWBI9eUYgat76NNwVPmF8HBM0EXieP18TMKmPU169bMX3/8RsZ0d7Q==
X-Received: by 2002:a05:6000:2505:b0:3b7:8880:181a with SMTP id ffacd0b85a97d-3b9e41793e2mr288367f8f.13.1755108804443;
        Wed, 13 Aug 2025 11:13:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZcvIsvUcDD4fNs6VF79g0sGpREXGez3Sn/dElfwuukd1A==
Received: by 2002:a05:600c:3151:b0:459:e1a3:c3bc with SMTP id
 5b1f17b1804b1-45a1ae4843els662155e9.1.-pod-prod-09-eu; Wed, 13 Aug 2025
 11:13:22 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX2X4z2pGet4vZV8hspoeOBMK84g7YL0VFtRiHeNbo+UXYNOvUGH1uKpf5IKqDOce+iJ5JR39HuZhX8BA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:a03:b0:458:bdd1:b7ef with SMTP id 5b1f17b1804b1-45a165fb20emr34873875e9.19.1755108801762;
        Wed, 13 Aug 2025 11:13:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755108801; cv=none;
        d=google.com; s=arc-20240605;
        b=Kuj+1Zdoq1RSxnw5kzAO3MwvNE9swNiRxJGFWNl6UAiu61vedZwGUHajprvtIqySJj
         qjDiTMCM0xEzdP9+x0RRiD/XQIjzmFVeYImyxh/qkcAwASBisL42R3LxME+qlZOmrBNn
         CkfODp3Cgc3gNAfBkWZudqRWdXIkVDUYA6Y6p0lmyyvl8fRqs04RV7cARXrZOMx6TI4L
         s7f88jXfVQNzzaN6/Lo+MHTOspflI8Y3/m1vn4RKweS3fY1fmey63ZsIvXYV21maQ7/5
         Lr4CH6OWvUBoExxBfoDbnaYu1Ih+Aj2kGs7sVKR9lwOrYrbp0kVJoboQgij3UWJRrs4r
         uBeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:dkim-signature;
        bh=CFKm3y9YxdU6tj7GHV2bPw1IK0NzyIQ7DL6lw+pupXM=;
        fh=tmWp41uF2T+Wa0IE/D/SYvkg6xNHbks5ybIFf4sKgE0=;
        b=IuCqY8KdTgEBf/I1y/1fzGER0IBute8hC9Mj39uisQ78toIgLW402UoIdHZEsoYBql
         pfMr6WmyJ1MDp7oy7okh0yIs2gxb2KiEL/5zu8NLiLtabVBa2EKI45nFl8k5Cp6aDCfY
         plcPDP2clUtNaBCKYK7J8Ws3p6LeKVTr2ovILjGoaM9oNaZJCMCjuZBZSpxjzP3lK6uY
         RNtbUX4RwMjg6gBuGflLB0aybLOgZ7Uh4xxqold6xr1LBAjKdV4QQzQf/Uyw0fYG5z7/
         e7zkNf6WcGdNEoPNv7Cma7Xk49aEo4n8ygJuj8lgxHBoqfVzkWZ1H2HxMx9+tcsOeZAp
         XozQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=iTEVS3Uk;
       spf=pass (google.com: domain of giorgitchankvetadze1997@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=giorgitchankvetadze1997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ffacd0b85a97d-3b8d7c7b072sor4134592f8f.1.2025.08.13.11.13.21
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 13 Aug 2025 11:13:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of giorgitchankvetadze1997@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVN4QKss7pfCgCd+/HlL1e1PKPxdbHDf4NZ7StIJRcZUVUAx0o6tjCKM/fMuLn0PuixHG54xvM2uHXyEQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncuQZAaKMfT8Hi9+9c8siQIY2e5HgkJxOQBO/1/kj1ahaSrnxq+Y/0LOe0t6iql
	r2tQ5rHZf2XTpfrRN6wNk9UbZaDrgVDd5hfP8vNq7KWMU6++/+2yO7dQiVIloClV/3QdejBWHAV
	B2qjEIBuS57TfV1m0IcxZ7si7DJbpO1r+JRTrA4oGkiAWhW0/lyFaTa74cOqCfx3h8uMFCT5yag
	pYFBZzo0NcAyFXOyDAHhE2mzXuxYeTGkhpPkfRpxmqErSv81vNp9jH+k01fKlGJHlpjKzLYIuN3
	HITHkFAHDiiV6Wlgv5KkbOENtHVbdu3CyQbqP52CiLlggQj5o9JIIeBrnEW3daHLhFgYkZVxGcH
	kVSZzmj+mtE/WaWkKzNbZF6Uye6nw8xlScHfQ3Q==
X-Received: by 2002:a05:6000:2586:b0:3a4:f8a9:a03e with SMTP id ffacd0b85a97d-3b9edf84e33mr85213f8f.3.1755108801153;
        Wed, 13 Aug 2025 11:13:21 -0700 (PDT)
Received: from [127.0.0.1] ([185.115.6.10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b8ff860acbsm22133742f8f.51.2025.08.13.11.13.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 11:13:20 -0700 (PDT)
Date: Wed, 13 Aug 2025 22:13:18 +0400
From: Giorgi <giorgitchankvetadze1997@gmail.com>
To: Zenm Chen <zenmchen@gmail.com>, stern@rowland.harvard.edu
CC: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, pkshih@realtek.com, rtl8821cerfe2@gmail.com,
 stable@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 usbwifi2024@gmail.com, zenmchen@gmail.com
Subject: [usb-storage] Re: [PATCH] USB: storage: Ignore driver CD mode for
 Realtek multi-mode Wi-Fi dongles
User-Agent: Thunderbird for Android
In-Reply-To: <8560A878-1EAE-4FE3-B96E-2916E27F90F5@gmail.com>
References: <ff043574-e479-4a56-86a4-feaa35877d1a@rowland.harvard.edu> <20250813175313.2585-1-zenmchen@gmail.com> <8560A878-1EAE-4FE3-B96E-2916E27F90F5@gmail.com>
Message-ID: <A54117AB-2BFD-4864-AEA3-4F1AF977A869@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: giorgitchankvetadze1997@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=iTEVS3Uk;       spf=pass
 (google.com: domain of giorgitchankvetadze1997@gmail.com designates
 209.85.220.41 as permitted sender) smtp.mailfrom=giorgitchankvetadze1997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
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

Maybe we could only add US_FL_IGNORE_DEVICE for the exact Realtek-based mod=
els (Mercury MW310UH, D-Link AX9U, etc.) that fail with usb_modeswitch.

This avoids disabling access to the emulated CD for unrelated devices.


>On August 13, 2025 9:53:12 PM GMT+04:00, Zenm Chen <zenmchen@gmail.com> wr=
ote:
>>Alan Stern <stern@rowland.harvard.edu> =E6=96=BC 2025=E5=B9=B48=E6=9C=881=
4=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=8812:58=E5=AF=AB=E9=81=93=EF=
=BC=9A
>>>
>>> On Thu, Aug 14, 2025 at 12:24:15AM +0800, Zenm Chen wrote:
>>> > Many Realtek USB Wi-Fi dongles released in recent years have two mode=
s:
>>> > one is driver CD mode which has Windows driver onboard, another one i=
s
>>> > Wi-Fi mode. Add the US_FL_IGNORE_DEVICE quirk for these multi-mode de=
vices.
>>> > Otherwise, usb_modeswitch may fail to switch them to Wi-Fi mode.
>>>
>>> There are several other entries like this already in the unusual_devs.h
>>> file.  But I wonder if we really still need them.  Shouldn't the
>>> usb_modeswitch program be smart enough by now to know how to handle
>>> these things?
>>
>>Hi Alan,
>>
>>Thanks for your review and reply.
>>
>>Without this patch applied, usb_modeswitch cannot switch my Mercury MW310=
UH
>>into Wi-Fi mode [1]. I also ran into a similar problem like [2] with D-Li=
nk
>>AX9U, so I believe this patch is needed.
>>
>>>
>>> In theory, someone might want to access the Windows driver on the
>>> emulated CD.  With this quirk, they wouldn't be able to.
>>>
>>
>>Actually an emulated CD doesn't appear when I insert these 2 Wi-Fi dongle=
s into
>>my Linux PC, so users cannot access that Windows driver even if this patc=
h is not=20
>>applied.
>>
>>> Alan Stern
>>
>>[1] https://drive.google.com/file/d/1YfWUTxKnvSeu1egMSwcF-memu3Kis8Mg/vie=
w?usp=3Ddrive_link
>>
>>[2] https://github.com/morrownr/rtw89/issues/10
>>

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/A54117AB-2BFD-4864-AEA3-4F1AF977A869%40gmail.co=
m.
