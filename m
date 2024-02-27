Return-Path: <usb-storage+bncBCTPRFE7TUKRBROL62XAMGQEAEIXAKQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C58868B98
	for <lists+usb-storage@lfdr.de>; Tue, 27 Feb 2024 10:05:10 +0100 (CET)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-55d71ec6ef3sf3141354a12.0
        for <lists+usb-storage@lfdr.de>; Tue, 27 Feb 2024 01:05:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709024710; cv=pass;
        d=google.com; s=arc-20160816;
        b=w52K+hVSlM9uNHiv1P+Hp6OIwyXxlKIJ+tVAideMMz4WFCUvr6+xQATCo7vf2pIL9p
         R8jba+Wizc/bR33uCjbTJgPgz2r+8fdUtOOEokToRGm3GRpXJOW59UXKIIcjb9nq4T6n
         KgDC8FXhT6ta6DxZLSj+Sz5nLy87ap3ulh8/PO6KPXvY+vaVxefQU+if+WTwrnOaUHp2
         TZFSwy0jFq3ev1s/tDn1QOUZOt0B3eFXeSfRU3078fIOeuv131ofqd01Syj3eAK5tb9F
         qfFcUldbDp9wKa2nCDlYMUZDlS/57vFZlgsH+TwMoey9pbbVs9H83wIpNZYWiG5mT+L9
         iffw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=n6hYXKgyW62aCLNcy8ggFNChhcUhiu2GBWYJESm4mDc=;
        fh=OqHSVEU1n9ecQdOJTT+yS410WU4Emtj2XIfZZ0lXxGY=;
        b=NQc7JMgYhpqrgfaMXi696u4xMToiqwEdIKVxpqlAdUVrDOY/+GJy9POWBvHB0k156J
         UPXnm7oRkDOHRUsC0u5sJ8QMANH8b/IV0qYL21ZvTOpmfw/KI6VwlT7W2dV4vW7jgf7w
         Mbn5qr5qdLCaWFMVWsWAQJHmv492W4EelpV5Ad4jTGgc/n+BqnhkC33HYcwR6ep4aFYi
         8R2E0mFm1+QEeom1dj1uII2wEvzQTunSOaitlUkf3+pFq2kDPJWdgWm8VRE/PUhxOeaZ
         FjJprrIgHYDvFdx7m/Qoo9WIEN2x2hlBiYkltkWoGoMgGUaFG9p5saPe48kicDE2dKM/
         adjQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=coYsUMTs;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709024710; x=1709629510; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n6hYXKgyW62aCLNcy8ggFNChhcUhiu2GBWYJESm4mDc=;
        b=BKVahWVF45rWh4R2Nty11RH64Rzdzi1pFwsj1y3+dAAW+II6MxKmCvpucthKEl1hGZ
         Wan/H89yLgC/Nx1LXJmPjJ5rfcEkCa2+0aXzoKe88/kc9VjL421B3uDOFk07zF0GU6L+
         wZKov1/BS3EthPhUwb6AJi3OzpCOWdXKxzpDI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709024710; x=1709629510;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=n6hYXKgyW62aCLNcy8ggFNChhcUhiu2GBWYJESm4mDc=;
        b=ACSmb0p3CfRilSizzeN1QQuZQR+ZY5Ly259V1HEtjrIKmMY5qHt17poAj7sLyUY+YQ
         fQuiJdNGQI5On0o3sUz5Et9kTUyS5Rl4sliyXQxX86o/phaccHV+0pYpWh/TuGiHvT42
         KigwiM2Ry5gnWjuP75RVryRINE3wGQqzBcXwxzrA/sF2hew+nkFbwYVDy8CScA/Jro7C
         Eq7ghRhPTRdIERip5I4D6eAQR56xTOTEgpSKDir5Hn6Ee3RWiA457A2sc2XxCNxzouoI
         gL8bnySycgCuAmonO1YPz3ECmq+cT9RI4S7eaokWlklSubaY/FFe9IGLQ4MeV7U4EOSZ
         7v8w==
X-Forwarded-Encrypted: i=2; AJvYcCWBAPN6JQn5XzznGw2OL7s5cpXWvD+jB4IrHkM3hnuixyydhf/fA8cG90fD9Vq26tZC4duK2zJuCBHB9ZKEc3IqEPLlrRGU15uU
X-Gm-Message-State: AOJu0Yx97KWWC5gU6DeQNko3BKd6T8+0sgT8xMjLd2/702p0Uc6y3LLa
	VmsOtAx9v2eDw8CwCs/evQVgQ0BpgexHHsQV4nfDzbvGoeh+wUIbckNCkpMbE/8=
X-Google-Smtp-Source: AGHT+IFSeWT6luXel7RKQ/SNTZkRp/xh7ijL5WX/KlA1VM8/fhnVW7bilkwehv3prljOGo6uWQ8w6w==
X-Received: by 2002:a05:6402:180a:b0:566:4047:7106 with SMTP id g10-20020a056402180a00b0056640477106mr539019edy.25.1709024709823;
        Tue, 27 Feb 2024 01:05:09 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:401e:b0:565:6f7:f774 with SMTP id
 d30-20020a056402401e00b0056506f7f774ls557246eda.2.-pod-prod-01-eu; Tue, 27
 Feb 2024 01:05:08 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUkpes+r7sJJQP18TXdakzHMnMajEBKdYUbm1ZdLVps2nBMmpukfUEQ7XHDfEgcwqwQtRqVpdTo0jXmGK+Fm49GXotf2ilecC8aZ3mU80D13NOhcyA=
X-Received: by 2002:a17:906:c7cd:b0:a3e:b0b4:d51d with SMTP id dc13-20020a170906c7cd00b00a3eb0b4d51dmr6378849ejb.41.1709024707538;
        Tue, 27 Feb 2024 01:05:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709024707; cv=none;
        d=google.com; s=arc-20160816;
        b=iTkVEV8hkx5HU3RrgPSOlm9l6X4aj/rMG7EXb+pC+HkYT6zTEkheQeIvZDx8K6QSfh
         6c+jf+xeLN+LjTvdKi/AuCbkYQSF1VDIxCMjWvoAPi6PxpIVPJZhQIZ/B9mUs91Fp8HS
         egMIypYqAp9C33fFibsydgAGIQrw1WXotcCUrAgssRPRhiK3qGEtax2fbQ8i/vMAPOWO
         lPxcNv3VugGUVNpqHa1xEYNl9ZLHLhK/tRyKfqmp/CMM3dIo/30HcUKFlyjJPn1eFt7y
         K848yyhWPalTm4UBKFbiYhuz+qEzKTGJLZMMu9anXt+LNbXZ4J4xDFz+mC/57pEFEpZn
         PRVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=rCD6F3e3P3I+Zgk/2guSviAQKEfOfySNcNBt5UHEyXo=;
        fh=2a64t7o1R1ipgG2xFQgr6bPi475a2xkBrfino0m3nFs=;
        b=eI11lUVDPXJ47pnQZpxQss1U7KOFKqd9DXv+54NfGcKC9QmCHHFoeM4P7ftR5YY10m
         6VNWyTE1D0BVRsmmB03ZBctna3KU8rPaqS9qfmWbnHjOj0EkJZ6KxQ+aByPy06jHWHpQ
         SEzHd3SToGqFkHo+kkEMEJcWSXCzvz8OgHnYoxF4WXhlqeI1LIbuH8Ack1Y4sfHUV2HX
         +BwUwYNPh1m29EXSaYFkaTfiPDh85UlNITR+oj+KKS7EakZcralNkK9u0qI+dROFc4Zc
         i75oAgjU9NZ9OeVaRzwNKTASkCerNVqG4xzukluWwu+31yPnKP7S1aRPStk1QenmWVBH
         sYLQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=coYsUMTs;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id lr20-20020a170906fb9400b00a3e86dc5499sor1455400ejb.16.2024.02.27.01.05.07
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 27 Feb 2024 01:05:07 -0800 (PST)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCV8eVK1loWo1YKZ2UBgINZF7FpDhkC3JRG4HRCk6dJ2BYy9I/yAiwy5bLAtH+ag+jyqAUrC97z6eUx1EhDza66Y3+IqNRX0sLyNKy6wc+86NSK9Eyo=
X-Received: by 2002:a17:907:9950:b0:a3e:bd4e:c87e with SMTP id kl16-20020a170907995000b00a3ebd4ec87emr6151888ejc.36.1709024707227;
        Tue, 27 Feb 2024 01:05:07 -0800 (PST)
Received: from ?IPV6:2001:a61:1366:6801:d8:8490:cf1a:3274? ([2001:a61:1366:6801:d8:8490:cf1a:3274])
        by smtp.gmail.com with ESMTPSA id c12-20020a17090603cc00b00a433f470cf1sm552971eja.138.2024.02.27.01.05.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Feb 2024 01:05:07 -0800 (PST)
Message-ID: <8f4fe820-2385-40e7-a3c6-51102e57acad@suse.com>
Date: Tue, 27 Feb 2024 10:05:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] USB:UAS:return ENODEV when submit urbs fail
 with device not attached.
To: "WeitaoWang-oc@zhaoxin.com" <WeitaoWang-oc@zhaoxin.com>,
 Oliver Neukum <oneukum@suse.com>, stern@rowland.harvard.edu,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
Cc: WeitaoWang@zhaoxin.com
References: <20240222165441.6148-1-WeitaoWang-oc@zhaoxin.com>
 <3ff16f34-07a9-4b7e-b51d-b7220f08d88d@suse.com>
 <41daf1a9-590a-e220-84a3-648eb895272b@zhaoxin.com>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <41daf1a9-590a-e220-84a3-648eb895272b@zhaoxin.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=coYsUMTs;       spf=pass
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



On 22.02.24 21:06, WeitaoWang-oc@zhaoxin.com wrote:

> Maybe, my description was not accurate enough, here not add new return
> value to scsi layer,it just add a case to tell device is gone in the uas
> driver internal and the ENODEV error code not return to scsi layer.
> Here just notify SCSI layer of device loss through flag DID_NO_CONNECT.
> This is also hope to fix this issue in the uas driver internal.

Hi,

sorry for the delay. OK, I see what you are aiming at. Could you redo
the patch with a better description, like:

We need to translate -ENODEV to DID_NOT_CONNECT for the SCSI layer.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8f4fe820-2385-40e7-a3c6-51102e57acad%40suse.com.
