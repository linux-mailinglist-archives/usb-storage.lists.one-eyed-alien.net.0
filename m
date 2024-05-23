Return-Path: <usb-storage+bncBCTPRFE7TUKRBNMSXSZAMGQEOF7Y43Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F1F8CCED6
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 11:15:34 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id 4fb4d7f45d1cf-572b0a23d55sf1392963a12.3
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 02:15:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716455734; cv=pass;
        d=google.com; s=arc-20160816;
        b=gAKVpRV8LoAhuz1vuB7c0jATmdl1QSoOyNu/XqJaY9pml1xwR6rM2kVIU1rfgahNZT
         RQXvmfsSR0P9fwctAlxPJ9OZnoDDA7eVPszKgfmqswA3s+gJgxmnzRz9DI5CD5mocPIM
         YPLvdoaNve96ReJUu8y5xI4Huswqs08Bc8Wn5xllNfVTylxto9+1YZraR6LeszfmhcTr
         ukKoYnCCdHJ0nCphdq1JN6Md/hSTRmPHYq7Oy49N/IAS/6DHWcI49nV0qZtnxQOmlors
         +3/msj89WQKzWFgwSsyP1mslAh99QKldA3vs7ynFJ1boGk3cJPQ9Pya5NRA1tWwfPfaF
         io0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=DH6VyfQggzdp4JBsajjET7vnEA752PEjOh2YOVwpTFg=;
        fh=ugX0Q0q+Yi5WC/Wv0e7t62lJaYehxMAw39lBhd61HME=;
        b=SsC3X4+Qk8ZStfobVgSrmoil81RjjO775Qu+Uew/Zq2BNSWGhEAFoCWSM/5njx3uwQ
         fH+Ods06oWi4RVRUmkfXY0qmFcQ7bSCu+QXYLGrVgA2+4KSo9TETiYcKysPfkm7Nor5p
         DuhhYXA9TO2UR1bKtko1gUew4gujttNWhEhEm2E5b2fLkOJV0GVR4Sa3zN6PhxVWg7d/
         TTq9Ywgs/YKC8Z+0kNDNhgHB/9pLtiV8dS/9ygcpQxCjK+4X7esYNt30zl0s5yldqPfP
         CexS+qovTbZ5iv9Hukj9UbQ9Et5nMS/6/8a9wTSl2SWrVJoZzoGnAzpnJr6/3yFrZpxX
         BT/w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=QcsbmPVR;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716455734; x=1717060534; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DH6VyfQggzdp4JBsajjET7vnEA752PEjOh2YOVwpTFg=;
        b=BhGoYWczmG91Y2B/+hqMX71FPetf9c554EwWVb+PzbZlodgfXy0JWYmDRbRLDLjPc9
         QFPMoQTrSIVkrSmFRQT++cAfzosJqjEnrKRJ3Km1MZ+1hXN8Iph5KeNEm9isI4DeT0RT
         HQkecThwMxehGGhGshxAuXfeDYh7oczLA6VD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716455734; x=1717060534;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DH6VyfQggzdp4JBsajjET7vnEA752PEjOh2YOVwpTFg=;
        b=HX2xTg9kh8cm35Dj9t4OXykf/xAoJgOQ4lH8+JwXAaB8wqlFYGPGI/eJSTM372ABVW
         fsfuXqjl0ewXnOegrYDBPq+HYdS/Mx3YEZQpFVOLoCRgC1Jvz55Ro0BCNM3uqGhSL80o
         ONK05ZdDdYJ5qjG6LuKMFC35qv/4rlxj/qm92rwP6wyT4X/nyAhAcq7rX3R4ib7ZrL4G
         xzNDxVnxLIrOmWPJa9jkridR1uQ8Hk1MBD+85XG/biGxK70Pdio4E9lyD2lIXevIFwjx
         MC2nNW2J5goZZ+0cD6hbAaDIAcGjIuy7CLWi4cIczh2qFJ5sakCVvDZmnhsCNF4zKvzX
         dGnQ==
X-Forwarded-Encrypted: i=2; AJvYcCVSX87lQ+9DonxJjTxlylMEFEkWCaKSfCjZOCX3698QFEZf7BLCQZ9FJm0kuIeFe2xaVZu/M7lOEDvBHuh9WVD0uoVI0PdtOC7g
X-Gm-Message-State: AOJu0YxdT4Sej21E7R4oPfEp1BdOQVqCO/87D6u+uSeyQQmnFJKpeTut
	ZBayR36GCXdQP7lr2A7Vz2lhCm4euRtcU30Zkf++MtpgieH0FgIDxxYCNL5DLIY=
X-Google-Smtp-Source: AGHT+IFLXks2Ft1lVQoirlMSebbs0ZS99aDMk7ej3GYabtCG9J+OVMY6yReX/kBjspIjTjkC4c2qnQ==
X-Received: by 2002:a50:cd4a:0:b0:578:4313:df10 with SMTP id 4fb4d7f45d1cf-5784313e108mr1713953a12.31.1716455734084;
        Thu, 23 May 2024 02:15:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:e9d:b0:578:25bd:e528 with SMTP id
 4fb4d7f45d1cf-57825bde7bals68770a12.1.-pod-prod-08-eu; Thu, 23 May 2024
 02:15:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX7D3HnpWvbb3vR2fUG4OjO+9cUCWahV1yj8hxP5fImVMdge+q0hdQ9KnlBIb226r9ODgUsJybBDeIx3fnFeeZ4pVLxSvDgcqZDpANEAfrFzyQgUkI=
X-Received: by 2002:a17:906:a1d4:b0:a59:a033:3e2 with SMTP id a640c23a62f3a-a622820b853mr414983966b.74.1716455732106;
        Thu, 23 May 2024 02:15:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716455732; cv=none;
        d=google.com; s=arc-20160816;
        b=D9UCibY+V3VtxoY5uzOEulVmBxiMsUJ000DI6TRjZ3LC2e6wcQ0UYbmKDXr+H8dSpn
         4e9Uy1zPmhSgo9yuqwDkHl41b0u1YRHEGk2vKcJgUpjF9DngIW6xVfT8Tm5sFRKcl8ED
         667o6NXkmKNcroAfwuHkGoifpuf+IwuXHfKIXt6D8m7YGvdjmf8IM9a+dfpyeWvqPWmy
         nBftf4Q2gaib1JYqMTQiG5Mcq/NmFZGQzFcb2STA0BpgKPb74hCGD3w37sL5uHrgm2s3
         7Pj3lwYhC07uBSkJ1gSVm1pTtdSjrveEEQSFYCXkfqh9YNKMSbLrpkvDHNJqG0DINylB
         vjrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=b6yzAgRpwuvzYwVR75MaBk20iyXv6xLY4no1ggHk/Gg=;
        fh=pb6D2vz6mxb6uUvSsUFE2nxYa17iSBlNlmwUuVa6epo=;
        b=csExwN3LDHNkhTIpHWpU9+Ijqmfd1RF0uJxFltKmURJk15ilg8h2X3bt9wZ9mPO5bQ
         9PY+oXI/0nQfZGiae3IrcACRStFPkLXiop9dNmUBdMWMRyhVkCUe9pqO1FERNr840unW
         tVPaTu+Cxu9kCyFwrXKIqvpVsVKxvpPpBWAemK1kzVNSzREa4cdyU0wZUVjeyrP8oFVY
         uLdlNRqYxOnC+xGU5b5cNJsf2+qilh6NFsUd7yiSG01GblcXwt8Km8fzyaR/BR9VrD/b
         nB2nheZRRnv8KC7jLba8YhALEhmeQ+WEzUQ886PiwXyJNsa7z66SqVo6pB+NDiqZ5Xhy
         J0XQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=QcsbmPVR;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a640c23a62f3a-a621c9be989sor114187266b.14.2024.05.23.02.15.32
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 23 May 2024 02:15:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCU/heaTSEZmPOHLJfN3E5HduA/lrkg9YBcHFtq5YeSfY2Kfqxjtew0gHufe9i+y0uNuTb4gQTOg2f96iWMqC7GuT63SELCL2WARB7tup9yhdwjS6qs=
X-Received: by 2002:a17:906:81d5:b0:a5c:e031:faf2 with SMTP id a640c23a62f3a-a622820be32mr341298966b.77.1716455731708;
        Thu, 23 May 2024 02:15:31 -0700 (PDT)
Received: from ?IPV6:2001:a61:139b:bf01:e8eb:4d8f:8770:df82? ([2001:a61:139b:bf01:e8eb:4d8f:8770:df82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17b17754sm1888859766b.192.2024.05.23.02.15.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 May 2024 02:15:31 -0700 (PDT)
Message-ID: <feb574d6-54fb-4ad5-97f2-435e2636c07f@suse.com>
Date: Thu, 23 May 2024 11:15:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] Check whether divisor is non-zero before division
To: shichao lai <shichaorai@gmail.com>, Oliver Neukum <oneukum@suse.com>,
 stern@rowland.harvard.edu, gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org, xingwei lee <xrivendell7@gmail.com>,
 yue sun <samsun1006219@gmail.com>
References: <20240523072242.787164-1-shichaorai@gmail.com>
 <a218cac3-9d9d-4ac9-8ea3-0ea9822b2261@suse.com>
 <CACjpba7yh5Soe_Pr7D3SeTjjqzQB9q=nThaYRGAZu+EvaLfxfw@mail.gmail.com>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <CACjpba7yh5Soe_Pr7D3SeTjjqzQB9q=nThaYRGAZu+EvaLfxfw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=QcsbmPVR;       spf=pass
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



On 23.05.24 11:12, shichao lai wrote:

> Thanks for the helpful tip!
> I reviewed the code. Your suggestions can actually avoid repeated checks.
> And there is also such a problem in alauda_write_lba().
> I am a beginner at making patches. May I commit a patch again which
> fixes both issues you mentioned?


Hi,

yes, you usually are supposed to change the "[PATCH]" in the
subject line to "[PATCHv2]" and add a line in the log describing
the difference between the first and second version.

	HTH
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/feb574d6-54fb-4ad5-97f2-435e2636c07f%40suse.com.
