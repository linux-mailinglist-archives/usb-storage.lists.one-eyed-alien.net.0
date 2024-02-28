Return-Path: <usb-storage+bncBCTPRFE7TUKRBG4P7WXAMGQEU4WNB6I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x245.google.com (mail-lj1-x245.google.com [IPv6:2a00:1450:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id C690186B243
	for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 15:47:56 +0100 (CET)
Received: by mail-lj1-x245.google.com with SMTP id 38308e7fff4ca-2d2a83b6628sf2643411fa.1
        for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 06:47:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709131676; cv=pass;
        d=google.com; s=arc-20160816;
        b=jF+kzmnPq4lyePY/0i7/e6T0jQrYUkTfm8/CclvKs2e5GNqeHHLsnEKsb3TsqGmxGx
         wQTLbrbLSbp8VCu8RrPz21R2WhR6xwIAmtE0ECFqA1deC1JBWblmHu7Blnkw0IyijqqV
         HjbnAv6mEunOpJ3zBbpuAJJZSbOaHx4BRNXiN9OYeD+W03dLHeCZ6sx6CwZoCvMX/alJ
         n65bjGF09TNsJdL2ghifdy/CYP6T0AjS/izXwEMPEhCo86pBxctfQ9aJ50FE3LHUHaft
         90SLM4skKrks3LJ+CE9uR0vWbCDjoSfMUNaNbAX9QcndEI5hNYuhaO+ErSMTwwR4qJUQ
         qD3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=uJ51eL0ZLoYFLst3Zpi5SiYkAqVgXSNQxoTfuRD077k=;
        fh=M++UFbGJkC6Lc3/O8HSVDMfZgV3wC46ceCGXook5PkA=;
        b=YPs8e36FlvAZwAdmAoUhQgLvr/jHQHQdEoNPJnnOUiO/UstTLzrLvrhstJqOX5ggdG
         Ivst0NbqQC45g3XQ5f9mQOdMSNtHyFSaDrTVD4mo1S0XuTyC4Pf4ZlAKvXPx1QEgNCV9
         CNdRH+eF/9l8UZUPcQ8VGZ5AsJP37EUd8m1sA6S62s2QkWUuS0miP7gfGNkXfyoHMRSQ
         LlYtSJcnYl1VUeI8vjYPOADZbsE6JhrcbaJC+DK/SPWlLx5AChBiKslOM9UbyW+9WvWk
         jQ/RF54eczzlSooEuM9WlJX+aZnkJf+QJW+mUKQYQrF2VIATdjiqHia9YUNO1xVL7iG0
         BCuA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=DI7noasm;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709131676; x=1709736476; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uJ51eL0ZLoYFLst3Zpi5SiYkAqVgXSNQxoTfuRD077k=;
        b=di5hyu6If95oUOPVLyMsZPgiusJhyfxnfyvr4GN+pBx4K2o5zmmguPSwYplki/5rS+
         RsIvkDe7bkNgfXXuPzzdYQM4pa+GhjbOjphW0En6ZdVGNk/hVEs5AO7PqpghP4/ELK41
         r7vZqAeq3NsY9ztLa/GnZ5I0zmci1ibcLkQ4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709131676; x=1709736476;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uJ51eL0ZLoYFLst3Zpi5SiYkAqVgXSNQxoTfuRD077k=;
        b=umuu5ZUYxISiyxopustEUQzte0iYbb9Mix5TNYotIMfh3nf0DqEbqejgHhO2JQ/znk
         o9qL+1U5v3DEOJFdPSWDVEho4gauflbbPmTbjGZBeQLyIFdQyIXsAnxqRDaYLb4Nm402
         rF/QeNfsiiv8RDZyDjfB4k/B4+iKa1suOMzoG87ZUbkE5WIWOapwQd8URDuojERIIxAw
         zdRCN/AqLfGl4mrFxDM071nfq+gAIWwN70ZuLSz+wr9QqMScNn7UTJop5qpmjd2fkU7+
         iyNgQrNSjM/zHkvhQlA8hAJ4+dBjcv+j+5yPJYlYogoCXoPKkEgrsDoEyCiePFsaGdmr
         9oiA==
X-Forwarded-Encrypted: i=2; AJvYcCVQG0q5hHYOToaW2O3aQPDXvRYNs42ULsSUM5PSG5fQPrt8LyNp2IszvGyEkygxZDPOFr/mnYP8GWl/Uq3jtI0l2eY6tzqE0JcO
X-Gm-Message-State: AOJu0YzV1TdlRQQDQ2+hLbXUy2bN+9amEfSCx5V4IYoroh8Y4QH6VcN+
	wN1yEOTtYjjabGwfS9V4wSbzu8sU5z8Zi57xy67sE3SdPn6fU7QKyoerQTn6MXI=
X-Google-Smtp-Source: AGHT+IFsPKWM/FC0jWCmrXRBPtWeJyRGwl5dEbnhgTeWtPa9VqHy45WmNva/8+vTcbtpH8mX585D/Q==
X-Received: by 2002:a05:6512:308a:b0:512:ac4c:c91 with SMTP id z10-20020a056512308a00b00512ac4c0c91mr7610714lfd.1.1709131675686;
        Wed, 28 Feb 2024 06:47:55 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6512:2396:b0:512:fd8b:14de with SMTP id
 c22-20020a056512239600b00512fd8b14dels1599485lfv.0.-pod-prod-07-eu; Wed, 28
 Feb 2024 06:47:53 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVltF8gMTlf2y5EDCHLPMGM3q/FV9JuMZ4DRXVBeW2bXf7GTJpuIKU97lQj1y9awrWjOuyLuWvoO36MGE13uEw31UzpJ0k4mUV++x0mVk4bum8fkmg=
X-Received: by 2002:a05:6512:3883:b0:512:e137:5f5c with SMTP id n3-20020a056512388300b00512e1375f5cmr7156379lft.34.1709131673159;
        Wed, 28 Feb 2024 06:47:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709131673; cv=none;
        d=google.com; s=arc-20160816;
        b=x/DGhhyfHKOcOa7isUQ4kmCstXQG/Z9Tt6IUeldSrIFmiaWMguSbLMYcUPC38gkuEW
         cJVmUyK1nR/r24ncaowInYxTCpxFe/xBukW/WpjiWjugtsLw/fnskfW/3S6X7k51aXlr
         KvcqRlzOku7QvVycmCcczzJ3PdIbjHJIcI+/6rOOHZrPkDwQBzKp1iaOyAYj1UfoohsI
         jeLWnhdKvlmhvwpIGVpln2x4lR43EXCVlkVbKNzpnTp4evR0xccFUTIsJwh20V+3NL9o
         Do+YcuILqCHJhE3SnS9mijcdsw0NyMwwQdxGYBN+U+2VxDUM4AUZqIawo3Y4f4yM84Oq
         iYMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=3GbQN37mhhA8J1p486CCanaHeSFjvjlJFFfeli9pCvc=;
        fh=phjrNwe3erz6UvEkygb3TmsGypX1EEWqRD4A+m8Mk2Q=;
        b=HOXptcEtcPebSCqZH0RddoLmNKtpZZ3aKCZR2Mpcy9sVJfbIbuW4Ntdat2qIxv8Yhc
         SSsrvji0q+8ynNrG0ppVOH7rlVIS9ifZRvsVTb3fzLSEtOHulDCGt7Ii0UFS5a+JlRtz
         yeWZ3+ysguKl4xFB0t4NEb05Dj8YUVOn6Q+O5xz2SMe4ag++Df9OcwMK9gM6D9LCb6EE
         XZZErMdS6ni9XQZgPgZ8HaelzKj4kND3hHBMCZ36ywbkAPVK3TgeeGPWR6I0aKMFYF2o
         gXKldqaDWZBHx0bXOk4JQpOvBtqVjPVfXxQJPjkQPnj9WRfmpEc+HAWBs3Qjs4EVVgCt
         UOnA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=DI7noasm;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id f7-20020a193807000000b00512e2069b67sor2390241lfa.25.2024.02.28.06.47.53
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 28 Feb 2024 06:47:53 -0800 (PST)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXq5b4/l+amBvtr4epOOnSWOv3k1FTKk2IJN2oxZnHjhAi6qM+TF2KC3IeyfPtRPd27UPujQVLU3o/2vR+6GKTLL7yYwPyFGenLY8QOpk5vB4m/zUU=
X-Received: by 2002:a19:750d:0:b0:512:ab46:3de6 with SMTP id y13-20020a19750d000000b00512ab463de6mr7491124lfe.32.1709131672792;
        Wed, 28 Feb 2024 06:47:52 -0800 (PST)
Received: from ?IPV6:2001:a61:1366:6801:d8:8490:cf1a:3274? ([2001:a61:1366:6801:d8:8490:cf1a:3274])
        by smtp.gmail.com with ESMTPSA id n16-20020a05600c3b9000b00411e3cc0e0asm2351047wms.44.2024.02.28.06.47.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 06:47:52 -0800 (PST)
Message-ID: <49a365a7-199a-42cd-b8d3-86d72fe5bca6@suse.com>
Date: Wed, 28 Feb 2024 15:47:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v2] USB:UAS:return ENODEV when submit urbs
 fail with device not attached.
Content-Language: en-US
To: "WeitaoWang-oc@zhaoxin.com" <WeitaoWang-oc@zhaoxin.com>,
 Oliver Neukum <oneukum@suse.com>, stern@rowland.harvard.edu,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
Cc: WeitaoWang@zhaoxin.com, stable@vger.kernel.org
References: <20240228111521.3864-1-WeitaoWang-oc@zhaoxin.com>
 <e8c4e8a3-bfc3-463f-afce-b9f600b588b2@suse.com>
 <07e80d55-d766-1781-ffc9-fab9ddcd33e3@zhaoxin.com>
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <07e80d55-d766-1781-ffc9-fab9ddcd33e3@zhaoxin.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=DI7noasm;       spf=pass
 (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=oneukum@suse.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=suse.com
X-Original-From: Oliver Neukum <oneukum@suse.com>
Reply-To: Oliver Neukum <oneukum@suse.com>
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



On 28.02.24 23:32, WeitaoWang-oc@zhaoxin.com wrote:

> @@ -602,6 +606,8 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (err) {
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 usb_unanchor_urb(cmdinfo->data_out_urb);
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 uas_log_cmd_state(cmnd, "data out submit err", err);
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (e=
rr =3D=3D -ENODEV)
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 return -ENODEV;

This is a generic error code from errno.h

>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 return SCSI_MLQUEUE_DEVICE_BUSY;

This is not.

>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmdinfo->state &=3D ~SU=
BMIT_DATA_OUT_URB;
> @@ -621,6 +627,8 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (err) {
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 usb_unanchor_urb(cmdinfo->cmd_urb);
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 uas_log_cmd_state(cmnd, "cmd submit err", err);
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (e=
rr =3D=3D -ENODEV)
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 return -ENODEV;
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 return SCSI_MLQUEUE_DEVICE_BUSY;
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>=20
> I'm not sure I fully understand what your mean.
> Whether the above code is more reasonable? If not,could you give me some
> suggestion? Thanks for your help!

You want to change uas_submit_urbs() to return the reason for
errors, because -ENODEV needs to be handled differently. That
is good.
But why don't you just do

return err;

unconditionally? There is no point in using SCSI_MLQUEUE_DEVICE_BUSY

	Regards
		Oliver

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/49a365a7-199a-42cd-b8d3-86d72fe5bca6=
%40suse.com.
