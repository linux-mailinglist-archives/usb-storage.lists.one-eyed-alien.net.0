Return-Path: <usb-storage+bncBC5J7HGFV4DBBCGVYWZAMGQEKIWJDNY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED258CEDE0
	for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 06:35:22 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-6ab895ee028sf20843446d6.2
        for <lists+usb-storage@lfdr.de>; Fri, 24 May 2024 21:35:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716611721; cv=pass;
        d=google.com; s=arc-20160816;
        b=LdKsb16YBZadj2vp4l6gOi11xDO5+TBj/D2Y0Erv/Dghsd8pSVD7limpXJIAEqOgjY
         weDYZnVhEtox4WbXTCXTnPeyPGXP8fzkS9fzY1AXIWHuaqfksevilT1sODp3MyQ5lfgO
         /zE0fJSUgEotuTX0CncdonKf3tWObuAz7OakeAlxavkV8hRDd+iKdMnDU4+nLWVzl4o3
         PAMmYiHDbwBbLW7pNPWpOjdetsjcX6SafdB5wxpGOX8LorB3IMoIhY9QvDpGX4CS64eX
         YX4+k5eGXLD45uKwnDCrlJRszBu/MwqkU3DEd6yL4gvAxrxKAtNSzMIadztEyt0m5Fky
         VPgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=CL2FXsGqr1yVOUxFG482ikHReWJwIKQZUROoCdBjZ6A=;
        fh=DKobGoS6c19RVxtHffvA0XEVFtWdAMvt26WKe1XDNAs=;
        b=pzKsQUK+y2Q/+BovfW8g6LRllemEcizrB7AUevW5g1t2Y2jA4Y/ECuTZIJgNg6wIdy
         z+4x1SHLpmsNo3peaD/MMqbeDXV5ICh5P3ptS4WZmb/yFd3KxJffk6rz3GpCl0dPCzZz
         HCSvqC7DNeeQJv0jKYhWaz74GJ/pKslFLI+4JsOcBXTqVclFLC1KBFXzidXhFrokJyyd
         7tUoUSNwWBelHCybb3Qm+MHs0mQR34DFtNukWZI/w516sG/06ooD+thRSQQflUC0AQAm
         i6VEsi02Ss8nbfY0q1VCnNC2nk65Q1RJXjfzlpy1XMd7y3kacwYNk5DPEsbVUn23iqce
         BCOw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=aTPnnhJ8;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716611721; x=1717216521; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CL2FXsGqr1yVOUxFG482ikHReWJwIKQZUROoCdBjZ6A=;
        b=B8DWOXiGAWtAWr5c+zOsmnEvA0dvHLKG74gw59Vs4pxz5jPDyxt8Td3eSe9OEEhDzw
         By0Pu5YzoSsPoE8v3H6pbN4zV6U+robdf2FZsYplxhjUT8222Cwktx4DZrB2aC0bpGGq
         X3vv3IOMP9K5VjPyrvONObx93NlWH3/ymz3y0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716611721; x=1717216521;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=CL2FXsGqr1yVOUxFG482ikHReWJwIKQZUROoCdBjZ6A=;
        b=bKiLZiB6CD+kHmhLcG6xqIFZmghICiU+Pz63XoTSjsuUa305E5Bmt9I4IsPDl7U/0k
         hP4DpO57x6DKPalUp7Zq8xNRQJixuK05rWaiup1WC6oVUtvnTf7xHvlNJDlGgzr1d/q5
         u086usDhm0t4YW0+hShX5oJmLPHJbde75bZ2cGZNqSKWDqt/NLTiHr2ix4bOlXib6F47
         jNbcnq0hciojCLKniMh7pLWSeA7YXJPnateHrdqxRDCAiclRj4OYlyjiXFvaRi0Ta6Mu
         Gs8chhpzo35oVt2PWaWDSJKBVNlOkO54g20dbJ53iajHmuvOsQMWPtTothHKnfoDCMb5
         CUxA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWr0ZUjZN+eMDtUaRR3OCtDT11vleI3DyRVfiUeVpyf2/GN80zHulh1ux7U3fuJzJn3tkorVPlEek/ytPWKmRCaN2REPIZkykuF
X-Gm-Message-State: AOJu0YwuqAkpKCAEQqh4nmmARYHJVBBn5sk2BuVzXHznCnYaEs3/OEWk
	js7IrYD13YVU7fq15ciHLgSvPrq4KiFjfjTkVHQl4DfPJ8JzZiA1Ee68XagkDLs=
X-Google-Smtp-Source: AGHT+IGO8iEx8VVrtHApQQWDdyKaGjOJkbBNy6ynVqV2d1e2669/OZr0O5Z6HUaYwClkaV4SwlRWWA==
X-Received: by 2002:a05:6214:4498:b0:6ab:9142:3b32 with SMTP id 6a1803df08f44-6abcd0aec81mr43271856d6.35.1716611720681;
        Fri, 24 May 2024 21:35:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:e89:b0:6a3:5cd4:7d1d with SMTP id
 6a1803df08f44-6ab9b490787ls21004536d6.2.-pod-prod-09-us; Fri, 24 May 2024
 21:35:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW1TS7DzlaQhYIUKDbLOkE1cVE86tVbeW3yy2TovurYM4ECkE2uHEAZ8yfdPaXzGJlrYc2pyDy6CrFefmjdD/41eCAwhboF0f8TvJRa5kT510+bPkw=
X-Received: by 2002:a67:cfc9:0:b0:48a:3308:f80d with SMTP id ada2fe7eead31-48a3865a196mr3885561137.26.1716611719481;
        Fri, 24 May 2024 21:35:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716611719; cv=none;
        d=google.com; s=arc-20160816;
        b=jpWfUUWPlscjHsP32XG0uM+U0/v/ouGITVznocuijwdJhVhXEK/nZ1eAw2DB83FSHj
         HfShdQfPoaqS8NrIToeVmvDRTsw7GtJsgs16Lqa7Nb9beJHy7pFg60nzaLuJlrcC/Dw1
         2qfUFl1U2uZlNSSCZ+OgsRbTMjjxi1Gjdy7BoO2gyClu6FpfgFATlmrZdmt4LoG1j68D
         EgWfFzJ+idQVPOMHfiorevFstc1WovNe1CmFmncUm6SJBuz6arbwGHV5BZkI6v1YbdaD
         YDL0xmD+RTwrbUVx7DggK3OHn+UieLYuatpIr08fGiieak9IxJJ5ijML90mGlNZJUExl
         9QHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dWoy99LOaWUsln1ERoCJO5HjPgM8DNbI1vxUMTq+D6E=;
        fh=eFpkTzJ7C6Bz3+OTpgllMxfcuJCeE0el2gbvxRgFiss=;
        b=pnpnMEyV0U49ceGXRPmI13cV9X70xW+mGA9dQlPNOI3uGFmL1vA9jw0Q1dBgqt8b5D
         78SZ0YDii5J31P43d4CWRtf0fpgoFu2zAwsWYazrI/p0mGkRjN/xxZbR730LhuqaZBS+
         A+3cQV0XzhSsLCHNznSDRPU9458+IJfxZaMvC9JqAHdj4tS8HC74c7OmuJym4ipPI10l
         hpo+oWMDAbWmJMq7EEcjRtJdOjgcO+qijnmY36Ld/+2LAGqEkydD/1kGr76ajhZKWxV7
         bGvLqxVjsZctQbbP0bhLWrKJRAqOMvWr36P4VymuW4ngQ9OuK1NPYnuPhQ/BlmRhm5gR
         qqew==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=aTPnnhJ8;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ada2fe7eead31-48a3a2fdb65sor873573137.1.2024.05.24.21.35.19
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 24 May 2024 21:35:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVUoc6AqL7oz91jWsNWVhWAPxBEPGTdurKbvbArnctRjf/WM90nzesBwoItnmOtnWTOJB0yiLlmG3bO9YbqmvYI9WEG6f9FwOqgmsYFnmR8AjR3UGw=
X-Received: by 2002:a67:fe84:0:b0:47b:e9ce:42ac with SMTP id
 ada2fe7eead31-48a38514990mr4246136137.4.1716611719055; Fri, 24 May 2024
 21:35:19 -0700 (PDT)
MIME-Version: 1.0
References: <20240523092608.874986-1-shichaorai@gmail.com> <a0afa88b-f84c-4b45-a265-2e6bcbb84b35@rowland.harvard.edu>
 <bb581989-4ac5-4ffe-9f80-01b5f993146f@rowland.harvard.edu>
 <CACjpba5iJ5dC=rB_Ckaqe4BKesrAN2VmsDCPZJ=frufNgA96Uw@mail.gmail.com>
 <eb995078-1923-43d5-a20f-9d4a7edee719@rowland.harvard.edu>
 <CACjpba55sPDba9GfpMqe_GUgAtv=6MzWAnsgov-PdpFPEDxwGQ@mail.gmail.com> <e1e593b2-fc50-4303-a01f-b7f7bf467c4e@rowland.harvard.edu>
In-Reply-To: <e1e593b2-fc50-4303-a01f-b7f7bf467c4e@rowland.harvard.edu>
From: shichao lai <shichaorai@gmail.com>
Date: Sat, 25 May 2024 12:35:07 +0800
Message-ID: <CACjpba4d6i99_NcoShrfsZztzjzBQaL1nDC5WMTj2eBuMoaoZQ@mail.gmail.com>
Subject: [usb-storage] Re: [PATCHv2] Check whether divisor is non-zero before division
To: Alan Stern <stern@rowland.harvard.edu>, gregkh@linuxfoundation.org, oneukum@suse.com
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-kernel@vger.kernel.org, xingwei lee <xrivendell7@gmail.com>, 
	yue sun <samsun1006219@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=aTPnnhJ8;       spf=pass
 (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=shichaorai@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, May 25, 2024 at 10:24=E2=80=AFAM Alan Stern <stern@rowland.harvard.=
edu> wrote:
> If alauda_init_media() returns an error, leave info->initialized
> unchanged.  alauda_check_media() will return an error also, so the bad
> division won't take place.
>
> Alan Stern

Thanks! You also remind me that the return value from
alauda_init_media() is never used!
By this way, the workflow now seems to work correctly.
It tries to initialize multiple times, and finally disconnects due to
no response.

Now if possible, I will post a [PATCH v4] for this bug soon.
I want to know whether it is possible to add some tags like
Suggested-by or Reviewed-by for Dear Alan Stern, gregkh
and oneukum as thanks for your discussions.

e.g.
=3D=3D=3D=3D kernel log
[   47.266129][ T4125] alauda_check_media: before init_media,
status[0]: 0000000000000036
[   47.266555][ T4125] alauda_check_media: enter init_media
[   47.467314][    T9] usb 1-1: USB disconnect, device number 2
root@syzkaller:~# [   47.485304][ T4125] alauda_get_media_status: data=3D54=
, rc=3D4
[   47.485640][ T4125] alauda_init_media: exit in 391
[   47.486104][   T41] sd 2:0:0:0: [sdb] Read Capacity(10) failed:
Result: hostbyte=3DDID_ERROR driverbyte=3DDRIVER_OK
[   47.486591][   T41] sd 2:0:0:0: [sdb] Sense not available.
[   47.486889][   T41] sd 2:0:0:0: [sdb] 0 512-byte logical blocks: (0 B/0 =
B)
[   47.487212][   T41] sd 2:0:0:0: [sdb] 0-byte physical blocks
[   47.487515][   T41] sd 2:0:0:0: [sdb] Write Protect is off
[   47.487813][   T41] sd 2:0:0:0: [sdb] Asking for cache data failed
[   47.488104][   T41] sd 2:0:0:0: [sdb] Assuming drive cache: write throug=
h
[   47.491396][   T41] sd 2:0:0:0: [sdb] Attached SCSI removable disk
[   48.105309][ T1198] not responding...

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CACjpba4d6i99_NcoShrfsZztzjzBQaL1nDC=
5WMTj2eBuMoaoZQ%40mail.gmail.com.
