Return-Path: <usb-storage+bncBCENHXXO3EBRBA6B6TCAMGQEQGMCXDY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E52B25798
	for <lists+usb-storage@lfdr.de>; Thu, 14 Aug 2025 01:32:22 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-2445812598bsf6658305ad.2
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 16:32:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755127940; cv=pass;
        d=google.com; s=arc-20240605;
        b=cP0WDI4XYKutBblxkGE3dNybBKIii+PMp93fiqpsYab98lwE1WwcCArRDfCZWFNkP8
         jLinyYWeiunAx29yFmDFv15n/vgT22KesMylUEjhBNLjOlsWh+9Sjw/RWHIFVvn7njJb
         cwdaqLKJWhW/JXtnFU/dPXm3k2yv9/O6nAmWBNDrBWL1dJsZtsMphfaGR6edjsRsrXdi
         AxqmH/OTAqupGbrYV5tsgVX1q4NCVsSnxj/L5j12ifmZgnPQxphf3iwuOLbuy84Y5TSU
         Qdh8Iz7/lSJuDhKloa7rMtnz1T4lYiNLOqwVLbAnM9U55OLgHnPEIsi/8SLlflY+TW7/
         EYYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=pcTTymzdvK5E8d1Ei/ABXe+PKA6akth7QqbZ5NmJZ6w=;
        fh=1HsqFnQUc9DL0i8YxrDKK1cn58po5ueGgY9lK7bHtV0=;
        b=Ea/MEo/AIvTOpK0QFLvOgtHXHKP0hJogUwj1OOBdpMDMPVVsbMC6C23zUIQ8TCTVlc
         ooJmEhY63HDM/urzseK6HCt4wd1R7iiNi4fpoS8ikI4NG9Gy6bF0Xud9uN5JXXPWjGDk
         4eIayoOiR4PDFj8EQOKBjSuU997gySwuedk0IYR+mPkM6bvWs3IEk3e8OgZAj09X+iTt
         cwVTI9DptbjXGDS3nTqsPj52xc+1b1F+iyrQdWVt9eltgRQjQasdioToYElA13GTiYO6
         HE18UNpF5UnCza42jv6VRosUkJ7zVnoGoecKMqsqy2+LbRSEW7foc388aA3XorQjGa2t
         BdBg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=eKpqeLTD;
       spf=pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zenmchen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755127940; x=1755732740; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pcTTymzdvK5E8d1Ei/ABXe+PKA6akth7QqbZ5NmJZ6w=;
        b=IRxnzDu461AtTkVn2GYUE7FsEmfwNLme5wPNVScelclynxJCp3ICd435qpNR5gGxzC
         E/yxzP1K+jkH9OyrGtw1WlE2GE0AIISIQnLPP1iThjC2Lq/mKDcNiST5Sv85fqwSj24i
         aOKntoADnaXTe8fYlW57eprbkqmfS9zqYEn6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755127940; x=1755732740;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=pcTTymzdvK5E8d1Ei/ABXe+PKA6akth7QqbZ5NmJZ6w=;
        b=B47FtrZYEy/5G60Vngc5Rwq/5WgpZhpxg0Z8SMUr5pkgnLk1nsBO64T6OkUGN3IaZv
         eRDeg0rCAjf3G5q3OnHIbUu6cj/ltqa4FxzbA5nkGzJKwikLv7K54d676hVJEP+yrq/m
         jl/A5plGrX5tGlCTBWwLvbCMVEXNxm8Mghniqrne3HNEULBf5fyxFdQq0LzoknpuzXIC
         EzsbEjpRdngJSP76MwVq4u2edZxEi1wg+pctQYVydULurvz7LePW4jnYlP2TgSgzTJfd
         EiWcBRcDLNGZ2KX+Y/s7WeQ1XuGtQfrj8eShGlQG0DYXUNaVxu3GJ2U1QnoZNQtew1cd
         CQCQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCViJ6sU9vFb+kczkk4rgF8vYb7aPZPkKX9F6EzRDMVqwQ9m1Gv4e2+ww/M43NyPfltjxHu3Dw==@lfdr.de
X-Gm-Message-State: AOJu0Yw8LqE1COwk4UQuFX6EGEZoi16TFhA/CY1hZJw2proABCNN6jq1
	1csYpbMN0xFAp497fV739d1lUbEoY+ZHNEHkWA1LOISTerdT6ElqWpWDh8mmTcxUAXo=
X-Google-Smtp-Source: AGHT+IFTVjBfCQs+NKCZNTI9y5C3NN+RcsP5/gBqSMEBME5lDFJLLB+P44abevkaExqxcn3pTo5e5A==
X-Received: by 2002:a17:903:1590:b0:244:55b5:7cfc with SMTP id d9443c01a7336-2445868f650mr13781815ad.37.1755127940285;
        Wed, 13 Aug 2025 16:32:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZeXbBP4J4q48qkx5c20MGA8OzfU5YJj7DfNnc5QO+q5hg==
Received: by 2002:a17:903:40cb:b0:23f:ed15:442b with SMTP id
 d9443c01a7336-2445741983cls3358985ad.0.-pod-prod-06-us; Wed, 13 Aug 2025
 16:32:19 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVFRPUzj8s670HZ31emgIihZMEOAm6JVPkm8u0DX5hHLNy/Z2twnG8OuADpNBZXEqlI7Dp5PsslwSQBVA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:da2d:b0:240:7f7d:2b57 with SMTP id d9443c01a7336-2445868f4acmr11022315ad.28.1755127938916;
        Wed, 13 Aug 2025 16:32:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755127938; cv=none;
        d=google.com; s=arc-20240605;
        b=ITCLUQtisq9WEcY0UcNFBKJsHJtq1/Z8+tJX9DcXJQkzw0K7zV3qRXtE+FNVPuYqLA
         RKU4Iv3OtDnQGOX4xw0pnmKwi6BPc8lZiv7fOZ8zPDh7cF870aZEGQtFwO6DeKC5zRbe
         QSGyYTAveu2m64cs0JQ9H8rphKaaIh5E0Q077EY/dB8H9JBkgnGsoMG9WrYjTYtk5FXZ
         BS0xlGjanOEr7gqfllkREaQfm4YXzu6InSErcGsl3/u9gAtquysIsDNixisX2Vs1EsgT
         yp3yN7C9dXgBC8FOvfmDa52y90THKHktkNmeKVihqkw+YD31SxPFOyvYjphLXVHpihum
         SnLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DhsrtDmy6BVYWayk9pIuLqmtPvT+43DQ3nZ2+dNEhvc=;
        fh=2zrUj6gDCjoqYfQN8oMNz+ULZcsHt5iUCt3mYSFIVMM=;
        b=ZdcyZK4fUkhgb2KhCEN752iWSKKVxQsF/ntBECYoGEwSMT8++1D42zdOiMUxKs/K1+
         ps0liWok7xBSOr7f02piHG4lujCYeVL18xO5mVEujMVsGvLUBgsLrLo4ZRXDPgJNnZBY
         WEUMqtWZfV9Zie8wv+93xLe9Qfo0muutq7Y2LNxyXh3UNRMk2Mx+ajmLL69Y66sOQwhX
         3M4+yT/jLTm7pRwQ+Ek7DK0G9LA6gcjKXVx5RAtKF+U8grDv9/tEy1VWa2fdYMX2G7ML
         OKlSuEqf8CjYWhWJDjyDCfZjhqFIGuqgopP58u587fTSQ/PFtmF6ygY9G53P1VCgYXDX
         TvtA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=eKpqeLTD;
       spf=pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zenmchen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d9443c01a7336-24229c72720sor39221315ad.5.2025.08.13.16.32.18
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 13 Aug 2025 16:32:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVoVQn4xcEz5zgEwAHX1WnwttB0fNecYQO+p0lb8T4vHJjQrngZEYDkVUZJvmdSe5cgU+bowmiLnzRfXA==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnct9xpsoe9+WJ899nCADKB7dDOYFTg2E3TeCIjv1Tloi4TetER3KDiwUpKGDrS+
	g8CR6OhzdYbEaOLASv59dQd82b0T7hjo/gzu8o4DcZ915Nfcu1yCGtJdKqKQ7Sr01YcbOxhLdGB
	ZSgGMXYoflb6HFqGr0NkPV2EjZj/+zRwtpFK/uYohFM3RJd2C4TSrxXXPJJKNGjWYsjRRj339ub
	eJNB/Uvb0W7xkx6c402ZoJhboNsSoUs8KojEyarlPvnpcPojJuFZhXR/bSLPkoKNu9SNIhPvdRD
	SvHZw8nLqzzbcQEAT4h8eluw4k6g+gz2ejICYm6Kkt76bpJLZY8kbyVJUTcQ0P2Wf0TOOmeMreV
	em4Rt3lfSDECvXeQ1dQcZO4TsJ3elsxSyxzusgsM5PipHaSAAvwF1
X-Received: by 2002:a17:903:b8f:b0:242:9d61:2b60 with SMTP id d9443c01a7336-244584b467cmr12353115ad.6.1755127938319;
        Wed, 13 Aug 2025 16:32:18 -0700 (PDT)
Received: from BM5220 (118-232-8-190.dynamic.kbronet.com.tw. [118.232.8.190])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-241d1f0e945sm335665145ad.56.2025.08.13.16.32.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 16:32:18 -0700 (PDT)
From: Zenm Chen <zenmchen@gmail.com>
To: giorgitchankvetadze1997@gmail.com
Cc: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	pkshih@realtek.com,
	rtl8821cerfe2@gmail.com,
	stable@vger.kernel.org,
	stern@rowland.harvard.edu,
	usb-storage@lists.one-eyed-alien.net,
	usbwifi2024@gmail.com,
	zenmchen@gmail.com
Subject: [usb-storage] Re: [PATCH] USB: storage: Ignore driver CD mode for
 Realtek multi-mode Wi-Fi dongles
Date: Thu, 14 Aug 2025 07:32:13 +0800
Message-ID: <20250813233214.5069-1-zenmchen@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <A54117AB-2BFD-4864-AEA3-4F1AF977A869@gmail.com>
References: <A54117AB-2BFD-4864-AEA3-4F1AF977A869@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ZenmChen@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=eKpqeLTD;       spf=pass
 (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=zenmchen@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

Giorgi <giorgitchankvetadze1997@gmail.com> =E6=96=BC 2025=E5=B9=B48=E6=9C=
=8814=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=882:07=E5=AF=AB=E9=81=93=
=EF=BC=9A
>
> Maybe we could only add US_FL_IGNORE_DEVICE for the exact Realtek-based m=
odels (Mercury MW310UH, D-Link AX9U, etc.) that fail with usb_modeswitch.
>
> This avoids disabling access to the emulated CD for unrelated devices.

All the Realtek multi-mode Wi-Fi dongles share these two ID (0bda:1a2b and =
0bda:a192), so I don't know how to achieve this.=20

>
>
> On August 13, 2025 9:53:12 PM GMT+04:00, Zenm Chen <zenmchen@gmail.com> w=
rote:
>>
>> Alan Stern <stern@rowland.harvard.edu> =E6=96=BC 2025=E5=B9=B48=E6=9C=88=
14=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=8812:58=E5=AF=AB=E9=81=93=EF=
=BC=9A
>>>
>>>
>>>  On Thu, Aug 14, 2025 at 12:24:15AM +0800, Zenm Chen wrote:
>>>>
>>>> Many Realtek USB Wi-Fi dongles released in recent years have two modes=
:
>>>> one is driver CD mode which has Windows driver onboard, another one is
>>>> Wi-Fi mode. Add the US_FL_IGNORE_DEVICE quirk for these multi-mode dev=
ices.
>>>> Otherwise, usb_modeswitch may fail to switch them to Wi-Fi mode.
>>>
>>>
>>>  There are several other entries like this already in the unusual_devs.=
h
>>>  file.  But I wonder if we really still need them.  Shouldn't the
>>>  usb_modeswitch program be smart enough by now to know how to handle
>>>  these things?
>>
>>
>> Hi Alan,
>>
>> Thanks for your review and reply.
>>
>> Without this patch applied, usb_modeswitch cannot switch my Mercury MW31=
0UH
>> into Wi-Fi mode [1]. I also ran into a similar problem like [2] with D-L=
ink
>> AX9U, so I believe this patch is needed.
>>
>>>
>>>  In theory, someone might want to access the Windows driver on the
>>>  emulated CD.  With this quirk, they wouldn't be able to.
>>>
>>
>> Actually an emulated CD doesn't appear when I insert these 2 Wi-Fi dongl=
es into
>> my Linux PC, so users cannot access that Windows driver even if this pat=
ch is not
>> applied.
>>
>>> Alan Stern
>>
>>
>> [1] https://drive.google.com/file/d/1YfWUTxKnvSeu1egMSwcF-memu3Kis8Mg/vi=
ew?usp=3Ddrive_link
>>
>> [2] https://github.com/morrownr/rtw89/issues/10
>>

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250813233214.5069-1-zenmchen%40gmail.com.
