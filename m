Return-Path: <usb-storage+bncBDY3NC743AGBBZ74QCEQMGQE22U44UY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1E43F3760
	for <lists+usb-storage@lfdr.de>; Sat, 21 Aug 2021 01:44:40 +0200 (CEST)
Received: by mail-io1-xd45.google.com with SMTP id i26-20020a5e851a000000b005bb55343e9bsf1283984ioj.7
        for <lists+usb-storage@lfdr.de>; Fri, 20 Aug 2021 16:44:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629503080; cv=pass;
        d=google.com; s=arc-20160816;
        b=q6VJ2+4nEKr8FtVMm2gq1CRiuJ379KsKQM3jGtsPFWBDo8O9zrICR4r8rItjXy/xW/
         5i3Cj+50S5XPwBM0DJ3VsWzld3Dr/GlhsVF/cbZvUFZTQCeSHRhj0Epxisk2X72AY0JO
         b4sXbBLheqIzxBJhk7sAWkcGCX6aoPknAIMbzBTO0N0PPz561izpWSF6JjwNuQjw7Zo6
         mynAUya4Qv46vhO3zuAWFiXIfkAFUzR3i3t0PrapI/8AfqpLmUZ8do6+ui/azkKJOU8X
         vFMGx+pHR6PPIQl8TUK7vdsknLvHYeo9YVvzp6yZGAvqA2Pr6VU7POA2+Otbg5n95HMe
         PR1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=1GFAyA5xZds0dQpH0vR2ZRg67l6GlPifucb8la69Hfo=;
        b=pWajE8ilzqHqWXry30K7VsrCnfdbUvKgpWZ6n/Mtgp20qH1v3u5vDSfEheNaO2K5rt
         IjCM1f1DvIMZkOCGhu+TErX1+lSPJjvxSleiuYyMvjTQ5mBdKPThQ0tB+lR6zDD+SlKl
         Aev6DzOon1SsUnahwISAQxGTOMzKa2jcL2X4n2L6md67IKUq6MpPb2RjUga6LRZ0NPey
         31ZZnEBXjk93PIFW8eBN9k9U5m0SlpVjEbarbiuHwpmmIETVPowkZ4c/3NW+alZib42k
         wTmretMESoYc9A5rhfT5NRAY2KG4rOgTIny0UOcMNqF08735GEqnKb9IEnV/0jLQ+Fv7
         UfXA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 216.40.44.192 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1GFAyA5xZds0dQpH0vR2ZRg67l6GlPifucb8la69Hfo=;
        b=dum7C+WqAyb77JKZ6Ix2aAIGGz40b6IWebY0iPJRUD48bj8MJ4vYhYCwX4uUEnzWrs
         BUGq6qiR+LZs71JlH+VRa2hla2JNzerFRivyHZioDKIaGmDUei8CiMUso9Oxwt6TUxeT
         slc5eYWw+jtiqLQiO1ikxoT1luHFea1Lu9ydU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1GFAyA5xZds0dQpH0vR2ZRg67l6GlPifucb8la69Hfo=;
        b=luh3ENuOxoRX85k4lItAZkJ/HiVSETVsEw/0Z72/Q1IhMxnwBhCst1LPP8KWAd++oQ
         qQ1Mqqt+vaVZaLhBVqDbjYJz63pCVdXY3Q0lxxL//6b7iJHpViJAqHoyWcXYZOxNjZZ6
         rbExsw9AkfgHfFh+3jwEAODmPX979frfCqQH3qbpra8vOWL0xS0z8wCl9jq/sgVu+sei
         3m2a7N5ya2IuQfLF+cqpKYKRyHsO3clKUH+XZSM911BuH/icLG3Fbb4Klfq2py3AVB08
         J5GaBPSxojxmsjffJadRH+3kRMiCD0d47VKYB+2Zrr76BYlZbtC7LfRyVoOkVRfszEGj
         OSCA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531vndhZqiGaon3MMQBjXzx1cU25TNB25QBCKn7U2Iv/H4G3kSFk
	7HqohE01nZqmOs46aw4w1I8WNw==
X-Google-Smtp-Source: ABdhPJwpO1mK10jCfPZ+5KyaRB21Ik/ZTNr6UkStv4++ADujEcjOUo4zeQ/4x8pFaeJWV2zczzokOQ==
X-Received: by 2002:a5d:8a05:: with SMTP id w5mr9478396iod.155.1629503079816;
        Fri, 20 Aug 2021 16:44:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a6b:fb19:: with SMTP id h25ls1730014iog.3.gmail; Fri, 20 Aug
 2021 16:44:39 -0700 (PDT)
X-Received: by 2002:a5e:d80c:: with SMTP id l12mr10235138iok.120.1629503079329;
        Fri, 20 Aug 2021 16:44:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629503079; cv=none;
        d=google.com; s=arc-20160816;
        b=YA4D2bgRc8RmzYrhxc4qbWH2yNMOZxqYW65Rs1hzYjmFrfcZVyvvfRKat8+DUKSk1Y
         XjmCITUJgm+EWfBQmCMb40ngoLMurPu2KcvXbRsX5kah/s2fklghln19N5HRe+KOtavl
         9luFvS3/WjMhFHdCvFfL71DzkBudsaTMiRsGW7W1f/QGvYdBHmRvApWfFLcLp2Jk6kSX
         uTlJJnnzt09kRXZJwt9bu2J4mFdugt1oniRrXwD6eO6RTy7oBEhyViBrI86Ynx1BUF4c
         /T6TW1H8tbiB85qk4ZSrEG5MMEi6YILg02gipYZgbI1tPhqoVqKCo2MKfXWQhzAb0w39
         FBzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=OlrhzLg48ZW53tZCJPaRsyHfnAI739BKb5OvYEmGHBA=;
        b=gIAInxKyyEKrUGd7uHilBAJM6fmOTi9eMvj3CY5jSvFrz3+RciEt3QFKcnzH4mQxSc
         H+pN8TiN0+yOMAI61IUJIne7Brj8/aZ3oquxeYGaleJaHDkbo4tbDxB6YTsNfAnEF6ka
         2Us8AJQNnJAFVfAVDu174+xx90pVkmQbGkYSk7ZN12Gnjui4LKIuSKZ9otObEHCkXLab
         qU+YzdbkoDDh6Yadkro4ueSCOUIWth1VJaxFcaCKgxEo25uj5td0dx9rviS0on6mzbj4
         S7d/uS46McbauTPEV3cbJRDSyEnFxcuz5BX+wU1qie+P+ANmVZuKb1TEwqHIZkwxH7x1
         wXyQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 216.40.44.192 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0192.hostedemail.com. [216.40.44.192])
        by mx.google.com with ESMTPS id i13si7687415ilk.122.2021.08.20.16.44.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 16:44:39 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.192 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.192;
Received: from omf02.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id A8CFD181B9DC3;
	Fri, 20 Aug 2021 23:44:38 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf02.hostedemail.com (Postfix) with ESMTPA id B62101D42F4;
	Fri, 20 Aug 2021 23:44:37 +0000 (UTC)
Message-ID: <56a7a9a9f8d71cb47431ea18c7394cd3d3bdb3e4.camel@perches.com>
Subject: [usb-storage] Re: [PATCH] Usb: storage: usb: fixed coding style issues
From: Joe Perches <joe@perches.com>
To: Niklas Lantau <niklaslantau@gmail.com>, stern@rowland.harvard.edu
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-kernel@vger.kernel.org
Date: Fri, 20 Aug 2021 16:44:36 -0700
In-Reply-To: <20210820223954.2945-1-niklaslantau@gmail.com>
References: <20210820223954.2945-1-niklaslantau@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.14
X-Stat-Signature: tm41na3m44sha8qygahtu4kod5goqh3x
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: B62101D42F4
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX192M261RX/kpJDJeC+wap5OjtUmjrmddBo=
X-HE-Tag: 1629503077-830485
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 216.40.44.192 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sat, 2021-08-21 at 00:39 +0200, Niklas Lantau wrote:
> Fixed coding style issues that generated 1 error and 1 warning.

While this hardly needs changing:

> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
[]
> @@ -295,7 +295,7 @@ void fill_inquiry_response(struct us_data *us, unsign=
ed char *data,
> =C2=A0}
> =C2=A0EXPORT_SYMBOL_GPL(fill_inquiry_response);
> =C2=A0
>=20
> -static int usb_stor_control_thread(void * __us)
> +static int usb_stor_control_thread(void *__us)
> =C2=A0{
> =C2=A0	struct us_data *us =3D (struct us_data *)__us;
> =C2=A0	struct Scsi_Host *host =3D us_to_host(us);

I'd write this renaming __us to the much more typical data
and remove the useless cast of a void *.
---
 drivers/usb/storage/usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 90aa9c12ffac5..e78e20fb1afa5 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -295,9 +295,9 @@ void fill_inquiry_response(struct us_data *us, unsigned=
 char *data,
 }
 EXPORT_SYMBOL_GPL(fill_inquiry_response);
=20
-static int usb_stor_control_thread(void * __us)
+static int usb_stor_control_thread(void *data)
 {
-	struct us_data *us =3D (struct us_data *)__us;
+	struct us_data *us =3D data;
 	struct Scsi_Host *host =3D us_to_host(us);
 	struct scsi_cmnd *srb;
=20

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/56a7a9a9f8d71cb47431ea18c7394cd3d3bd=
b3e4.camel%40perches.com.
