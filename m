Return-Path: <usb-storage+bncBDT33UHK6EMBBPEBZ67AMGQEVLH27RY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C0BA6085A
	for <lists+usb-storage@lfdr.de>; Fri, 14 Mar 2025 06:38:06 +0100 (CET)
Received: by mail-wm1-x348.google.com with SMTP id 5b1f17b1804b1-43cf44b66f7sf9877325e9.1
        for <lists+usb-storage@lfdr.de>; Thu, 13 Mar 2025 22:38:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741930686; cv=pass;
        d=google.com; s=arc-20240605;
        b=YyJhYXH6X+V1aWd7xCouT7yZfXz/6TKQnpL4XcxWjAUZO9FrrMEfh6v1ysZGTh/yfY
         sTZqOBbpeGw4yKT+6Fd6phpUDY3wqKJTrG2VqWiAquml2UyrVcbu5uQ+5AfLwYGo4M06
         9ipYEC9S4pZqOYpvDb6HD5EOByqjYTJ9V6hEsYe+KBf1+oQtLqRRbp2/EFlGcka6Swyx
         xVomuHodgt8bx105GjfHfygy4C7ux80yF74B6pN7vcXX2EeO/fAEtCpvVoXMLnk/3k+u
         RqQ3UXPDZipAi++S42Ogs6pzan+a3rCGcrUZjeRVepK8MwD2hp1XD2uRjhL9Ik3HmXyd
         8Vjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=msLQhSls51NGbGGZZSfzxV8Cn3RIkfRqrYtZeccZhdo=;
        fh=OLYktc3ScBvgwLPbrovJL6SlDPz8pjBRDsKrL91Jy0Q=;
        b=CcZ+UiTxBcI2PZCDEtAObExIAZPMlWzA5dBFLcfKYYZV/nSaZd5+KuKK5nLttjOk0f
         UGpmgpSZL6yvaCKcUqJwJlCP1dfLmVKRuzQtX8Vr/AWmWRwQSDZYr3vU8XOYXsO2o+rH
         lt8WJGH4O/H5iv4E4IEZ38Uro/gxoTAMkg1/bjditu9XUjdJO/LXtlTZBD9NYEvjjYTC
         3NxR20YQP3rHiao0XNHf2w1NkR7Gme3pq5a5FJA24cnU4xfYzu0GOUWSo6w0GVzioQk6
         hkwAlRnljXCqaPE3bz7qBxlZ0TYOUd1CIhW16MfjNLEsWCE4RgbziAPo7fsTc/USzvlC
         3F3g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@one-eyed-alien.net header.s=google header.b=rVFVdELt;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1741930686; x=1742535486; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=msLQhSls51NGbGGZZSfzxV8Cn3RIkfRqrYtZeccZhdo=;
        b=b3b6MfYZCf2jDZMElVibWyuHuAqb3Z0lfU2Beh+tJxUImyU1H3X+G2Tnl/kltwaqar
         wI5EjmtibQwsRtJx7wK/WR8+uzRHdwSs4tR98B+MzIGoWNztUfD/whmgoXEdObZ8SOMH
         Zn+thDioYQyXrAW3/zPvoMJXzfoWD3MKpdIpA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=one-eyed-alien.net; s=google; t=1741930686; x=1742535486; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=msLQhSls51NGbGGZZSfzxV8Cn3RIkfRqrYtZeccZhdo=;
        b=HfpmeBUytZ7tZhHH2AGIoIt6eGp/eaiWwbZRdZ1wOUTlKxEWXze/r6nDAzCwwpl3Bf
         ZgcH8coF9+DH4kHFeBguGp6gCZ6oABx7gY8iiSjSJQbrwviUAdaCk/K7ZG1pcEAzt8l5
         w/k0V6lb+GFtFcMVDBUS/NyGXn9wTlTm+8uKU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741930686; x=1742535486;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=msLQhSls51NGbGGZZSfzxV8Cn3RIkfRqrYtZeccZhdo=;
        b=d8cVi2t/vbMo1zkJR9dB07mzE9ZDpI+0qEQLLKPTar8nrLYq7lKLY+uys7gxr6zfwQ
         BberuCqaQp1sWewWxc8UBBKlI6C8PfjetyroMKh5blfjm1vu9U+5iFD+i/kNuMm56xqI
         lWhUr5TZe0pqvsyJ0918aUkennTiKo3ljtFHCMJQlRaTX7D9I/cQo9iXqs4Y9uWiucA0
         s66MvQFMdmCyxyWeRpIfZimeXNp/KBdvvC40klQYfiwcZPpWcQo/qoXVFkF7KwwG9E2r
         9ljQO9HXSzLGK/PUO8tOXSeyoKsVkIvtsqaBfyJebjXuzTqSXEz/1XE7CEKj70NuJ460
         zWMQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX0C/STc+hlArMh5ywXTj1+ltwh1p8QSHzLsuo7xnVeIsm73tGSBPpdpsTJJJNEg5VBb3WDJg==@lfdr.de
X-Gm-Message-State: AOJu0YxhagPf0sZYHo6bbpc43eA4jcJqHkyz/CiHajzmXh7uK9qHk08c
	Ciizr5iMZ8aLbVFzHRD8CNFxEKRL3+b9ogDqPcDEmNqrsHjYo34KLMkZa5kz3p8=
X-Google-Smtp-Source: AGHT+IFeOA9PAYQ49ySMlJrOndjJiDzvDuF0IsNNAAB8oT2MlYHZdnH2+9WdwAjE0jhxufebF2S8pg==
X-Received: by 2002:a05:600c:470e:b0:43c:ee62:33f5 with SMTP id 5b1f17b1804b1-43d1eccf8c6mr13954855e9.27.1741930685343;
        Thu, 13 Mar 2025 22:38:05 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVH4JidVNP3wGmVjptrHe2WmkOfWnZcCtKpTvt4gFtNpow==
Received: by 2002:a05:600c:687:b0:43c:f1c0:1f7f with SMTP id
 5b1f17b1804b1-43d1fc7ededls910765e9.2.-pod-prod-03-eu; Thu, 13 Mar 2025
 22:38:02 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWwFuA11VIML8EgdZpe17zR9uNQ5DdQyL5dGowtwBtjrgEpe8r0m4QDQ2rcg2+o79QV42opW+SjmAgVDg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:4fcc:b0:43c:fab3:4fad with SMTP id 5b1f17b1804b1-43d1ec80ebcmr16508965e9.16.1741930681663;
        Thu, 13 Mar 2025 22:38:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741930681; cv=none;
        d=google.com; s=arc-20240605;
        b=hFbH/wbfsGHs3YYBrSnRS1ckZhh7XHxrlCF2AEL8wxqDh3qE/WPIO0URGBReegRKee
         c6aUqlJphv2NsmWMNio7ZJnGHDlW6IErKb4RB1TTvY1EhZ4UEsM3og+jY5u+WW9e26Mp
         yNfdsRj/CcPTNfVV1Cx3Wcyj2/lFPQBme60WJc5pD+YPT9trKqdyDqZQN9COkRNakh01
         OwUtxT01/b8/6hQo61FnmXTDUJjwvN8BCSL2Q7o9vuO2FQTVQL97PwLcjoytn4yisueN
         uaSVjSC82yQ35dI50P9OFmJ7kl7AdJper8vjYqqqJUF1f414YSwVP2yZjft6uavGFo9d
         rPjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nMdQC/9roImk0s7GMGocgKU0Ea/u69+eAi5KKCuOS4g=;
        fh=AMJvbSnVLq+5kKxvJwq5Nm08akXX0ulDGbwPumMk0aI=;
        b=KVpAOPYWPvHSCEhpa3rfac/DnzavAUbcUzismQtUYfENeobpyYIyQb70gshw0zucJy
         pSMMjTms09D8fthI3DN/Woxxy28aPEC5F/XWZzlJh7FGMOtDJOuSG6apgdfPtS6P+69P
         914ViPHTQgSd2nUyJbDxPdo1aHr3a1LPoQAFM0bQW/qwfDDjdVUVQXDQyvXfEFPvs1yw
         jlB84g3LXNztHlM3zPAk2KxqXbT58eNMFVYR7bHtKY3CLcUSRDVYmKcbPqUhdnU3OJav
         L8MbRtuTJSWB7swOHOp2IdXe8gmd+y2PGfgd3tfr7vE2GMbm8ZFNk3JJo6wbjjxE8urw
         JSng==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@one-eyed-alien.net header.s=google header.b=rVFVdELt;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-43d1fe5eac9sor1333255e9.7.2025.03.13.22.38.01
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 13 Mar 2025 22:38:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXTp4gMly2y5AGEIohLcL+wfpXMWO7UF0VUtTAGy9r1bMaLpT/8oOHb5MWH1GVWhyxpUqe5tNFJP3VCfg==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnctZmwzarEek95T0DAgq3shuHfyl2skCnFCn77UJZmy4hE4LEDSDsnR23wEqdty
	tArJb69zWLGvo899C0SsFjX4vseErPUPupkZs/yxAl19gDwm1bAzXbjR0pFoXy2goDc9QDpEEXR
	Iwm+rKH5KZssaczmSOMYZM6VbpD9nkm+Nai4FtM+I5Wh5lbQ+ifpZR1BO1QStg
X-Received: by 2002:a05:600c:458e:b0:43b:d1ad:9241 with SMTP id
 5b1f17b1804b1-43d1ec7264bmr12970265e9.9.1741930681134; Thu, 13 Mar 2025
 22:38:01 -0700 (PDT)
MIME-Version: 1.0
References: <20250311084111.322351-1-daixin_tkzc@163.com> <2b6c4aa7.b165.1958f6b7a3a.Coremail.daixin_tkzc@163.com>
 <814316b6-013b-4735-995d-b6c0c616c71b@rowland.harvard.edu> <1681f087.2727.195927b7ccb.Coremail.daixin_tkzc@163.com>
In-Reply-To: <1681f087.2727.195927b7ccb.Coremail.daixin_tkzc@163.com>
From: Matthew Dharm <mdharm-usb@one-eyed-alien.net>
Date: Thu, 13 Mar 2025 22:37:50 -0700
X-Gm-Features: AQ5f1JqK7mfkFRnnHhbib_ouPOR3RruHwBQMl_f6l0-0E-jlRPVLn-J2Iu35hI8
Message-ID: <CAA6KcBAU75TS348_NNLudMv=Ub=h_K2x9CC3=RfLtRvxKiq5Dw@mail.gmail.com>
Subject: Re: [usb-storage] Re:Re:[PATCH] usb: storage: Fix `us->iobuf` size
 for BOT transmission to prevent memory overflow
To: daixin_tkzc <daixin_tkzc@163.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, Greg KH <gregkh@linuxfoundation.org>, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mdharm-usb@one-eyed-alien.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@one-eyed-alien.net header.s=google header.b=rVFVdELt;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates
 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net;
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

On Thu, Mar 13, 2025 at 7:28=E2=80=AFPM daixin_tkzc <daixin_tkzc@163.com> w=
rote:
>
> When the urb complete (babble error occurs), the sg_complete function of =
urb(s) will notify the mass storage driver that the data phase of the BOT t=
ransfer is over. The rest is done by the mass storage driver, such us:

You appear very focused on a specific sequence of events which causes
the babble error, but we are telling you that you are looking in the
wrong place.

If the DWC_otc driver does, in fact, handle packet babble properly,
then it will never overflow the buffer.

For example, forget the specifics of usb-storage.  Consider a BULK IN
request to an arbitrary device with an URB that provides an iobuf of
only 32 bytes, but the device sends 512 bytes -- the reason the device
sends too much data is not important; this is a babble condition.  The
controller and controller driver is *required* NOT to overflow the
32-byte buffer.  The remaining bytes received by the host are required
to be discarded.

Thus, even when a usb-storage device gets "out of sync" (i.e. is
sending data instead of a CSW), a buffer overflow is NOT POSSIBLE if
the controller is functioning properly.  If the controller writes data
beyond the end of the buffer, then that is an error of the controller
and/or controller driver software.  The design of the Linux USB stack
places this requirement on the controllers.

Matt

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/CAA6KcBAU75TS348_NNLudMv%3DUb%3Dh_K2x9CC3%3DRfL=
tRvxKiq5Dw%40mail.gmail.com.
