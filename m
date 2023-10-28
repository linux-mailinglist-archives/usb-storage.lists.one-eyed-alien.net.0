Return-Path: <usb-storage+bncBCJ455VFUALBBH6W6OUQMGQEY27WTJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8D47DA69E
	for <lists+usb-storage@lfdr.de>; Sat, 28 Oct 2023 13:06:09 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id d2e1a72fcca58-6b697b7f753sf2760504b3a.1
        for <lists+usb-storage@lfdr.de>; Sat, 28 Oct 2023 04:06:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698491168; cv=pass;
        d=google.com; s=arc-20160816;
        b=jU79Bvjh+Jy0TqpBGan19a8jMSn6Pe+3QYWLPQziifcSBRC2lrTsdpdsojbRuU6t0T
         sl7c+3Dw5G1fiM+YEbFki1q7TksU5NY5ak0azycl6BQkoqemKYHJR0AwP8UFCtsCl+nV
         cZRX2qDZVFBtC7P/KblIxtFE7zF+RRlIN2jo/td0/wTnagdrtTmCoor4hT+BXn4p2SVJ
         sHvogUAMIcJYI3MVkZqiJdLeD78l8JP1MaOoLJwluwafcnt+MA3/5JSQpceFlbLU7HI2
         mq8Vq3b5b8WW2zSYjdh1/DHkUl0SHlU8V7tgV1kAMmEeAmfZ3gKeIwKjL8h2dk4n8+J+
         GyQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=2/2ztVOngq9fXiBeKzIlXL12xukHca2K2P1xTOMwlS4=;
        fh=8aUDxH71K+APVfQofOn6O6yQgS+M2ycT+lFbOy1DjnU=;
        b=fpd6ao2QQVYT0eGpeO+HWMo6Wmo6xPJdtYnufL8DuaELfpQQFX9Qj/hhlVlYpYg8nU
         k7MpM/CAuNuwsz9FsLxsk2i8PZSGXSJaqCrrJCmGoBnvzZeCDIFcl8NxdBV1ngAp5G2z
         XdaIUzUNnnBAB4u98x6E4y2YHs+NDi+2xJEgepb9+7O/uPU8DjuuvcAXrcD59I0Gdvvw
         jUxmejxkLO8w46zGESExlYkLcFs9Dv9zMSCayVSTU7/adadze8g2rDJpuTZ00f6mj7nR
         eHEX8Qf3uE/CE1IOH7PrrmWpHimBdPrkicqRMckGZZKfPCfM5UpoIYVIcaUSfBEBI8GU
         pGag==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="K56JJpq/";
       spf=pass (google.com: domain of bagasdotme@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698491168; x=1699095968; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2/2ztVOngq9fXiBeKzIlXL12xukHca2K2P1xTOMwlS4=;
        b=XZrmAF8aYiGSsqQKMcWJ3mRGfYeunZDW68mMZ9ieXNL3kuPXh1jqHswliEnvfHu7NZ
         veQs5lUG/dwKYD8HZM7DHKm5mvqAA00YBWtaIV+EPqdd5nFIw4gu3knH+umgeLVmQzZ3
         AsxyEQMcS2Vl5kwr2ZPZFoxoKMlW/DleTNJLw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698491168; x=1699095968;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2/2ztVOngq9fXiBeKzIlXL12xukHca2K2P1xTOMwlS4=;
        b=uqOC5iDjZae/Iao+OTLS7mELXUdlDWS3CyqrEgmyoLgEkcr5P351AQn724rT9VfOXU
         mcVfnfy0LiQQgbs6EdcVeBrSXq1gL5LDY7b3Tb+DvKHzsbQbLuCztl1soRKY8AIVWjwy
         c7tlK+NuU0xWkfL7DTi6uDZtQPGNwH5ckr1GPVWez3Ew00+6XSj892mRBwtCd+GAluUq
         1P5u6qQx0ULKoFEYdB4yVkhCz/ci04txFK+xIp9ZXsL7LXE5Jg0br7p5hqs9bBgsdyhM
         uwykAS0oyguCumr+zu2CsZqtZdsDxnuV1wbRSyllnziy2MLSh1EFoCkQqIDECT2LA0UP
         uyuQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YwcJNVfRpyHdTufo1tfQr3CC+lj9J3bAiIhHeKQ+h748X1016dO
	w7x+KSGQ2f7CSV/ypeRCqZOA1g==
X-Google-Smtp-Source: AGHT+IE+8pkX2q6QaJl5ZXS8kE/ANuPmSuivFKpy+nBrZFMqTyFvDcZGT14/RAdBr3YkOmOez0VSog==
X-Received: by 2002:a05:6a00:15d4:b0:6be:2803:9c92 with SMTP id o20-20020a056a0015d400b006be28039c92mr5909066pfu.32.1698491167927;
        Sat, 28 Oct 2023 04:06:07 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:9392:0:b0:6b2:f6b2:6933 with SMTP id t18-20020aa79392000000b006b2f6b26933ls964851pfe.2.-pod-prod-06-us;
 Sat, 28 Oct 2023 04:06:07 -0700 (PDT)
X-Received: by 2002:a05:6a00:b55:b0:6be:314c:16cb with SMTP id p21-20020a056a000b5500b006be314c16cbmr6140501pfo.10.1698491166881;
        Sat, 28 Oct 2023 04:06:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698491166; cv=none;
        d=google.com; s=arc-20160816;
        b=ggo8q129KxmPLiIRqcEFbiq+ihjvCl6Wp542zg+fEvAGpBIHbiJheyhmqH6R042VcI
         lH8L/c7+Kj1MhJ6pu4OSyGVk8IxHcESG1/xpY9o/PUsZAM5jVZzKxInBZZQz0AxRIB1K
         1g1EvUdvAfq8E5lZmUVc56uB6ROHkLdYZiKRKO3nDdkkV+/OlE8sRd0U5ObL0V08y8KV
         PRZEMtZgXraEEAM1+Efkfr1qlfxHmjW3JlDOQDMbdDIIA77obu5lH1UmHsFNIXt20SYO
         2S3eVlYN0tpKOjSDpr7u4Otv25LjsxFPdT591SQvIWyYIP24zpWcQoTdaApY026o33zu
         y+Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=TtYtgyOM9UtFee+JFxK1SBHozQSbcJd7lO6xgsYMlqs=;
        fh=8aUDxH71K+APVfQofOn6O6yQgS+M2ycT+lFbOy1DjnU=;
        b=m9akk6L/gLvoeIZVKHmPOHTQAhjlfIjZJHqPEctTzZf9OPywCFQ9vaXReirwLz+eO5
         EhlJ5A7kwyFVLhzZkys84Qekvi/8oasUVH1DbsP9ylNk2auXJUur39cSbIt7IvtQujNt
         ISpHxCI9MehXtR4mARoYYNTZk2EcwV50bADTcB7P+OYGaP3mGtE7HwxPMyTQ/gTzDns7
         IOn8qqUPBkoCJV6++l1mvHHN0u72uFhXY2g780U9PWv2zhB4Hn1yCZEhvmddftWCT0pl
         ObAVNgmCKARAFM5T0dg4b+WsH9XKo0/1JKIdI8ETa+wHZ5Weti6Y2mGrc44QHLV4+aU3
         lXPA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="K56JJpq/";
       spf=pass (google.com: domain of bagasdotme@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id fe26-20020a056a002f1a00b00690ba5df0e2sor2109452pfb.1.2023.10.28.04.06.06
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 28 Oct 2023 04:06:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of bagasdotme@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6a20:4323:b0:17b:9d92:7d0 with SMTP id h35-20020a056a20432300b0017b9d9207d0mr6723863pzk.52.1698491166458;
        Sat, 28 Oct 2023 04:06:06 -0700 (PDT)
Received: from [192.168.0.106] ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id fa41-20020a056a002d2900b006bf536bcd23sm2781936pfb.161.2023.10.28.04.05.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Oct 2023 04:06:05 -0700 (PDT)
Message-ID: <68ad3c1c-bc5b-4dd5-9183-202d8b04b45f@gmail.com>
Date: Sat, 28 Oct 2023 18:05:44 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] usb: storage: set 1.50 as the lower
 bcdDevice for older "Super Top" compatibility
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: LihaSika <lihasika@gmail.com>, Linux USB <linux-usb@vger.kernel.org>,
 Linux USB Storage <usb-storage@lists.one-eyed-alien.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alan Stern <stern@rowland.harvard.edu>,
 Milan Svoboda <milan.svoboda@centrum.cz>,
 Matthieu Castet <castet.matthieu@free.fr>
References: <ZTsR-RhhjxSpqrsz@debian.me>
 <055de764-c422-4c22-a79b-dd4db56122ce@gmail.com>
 <2023102704-stable-lid-c86a@gregkh>
 <7484f7c8-a49c-4111-83f0-bb6db2906fae@gmail.com>
 <2023102729-spent-ninja-7e39@gregkh>
 <037e5af2-3afd-4a37-a4d7-6dc87af605c7@gmail.com>
 <21c2b8ee-7753-413e-98f9-d1401edf5c73@gmail.com>
 <2023102720-emotion-overlying-9bb4@gregkh>
 <ccf7d12a-8362-4916-b3e0-f4150f54affd@gmail.com> <ZTyyDXYR4f6WKdLM@debian.me>
 <2023102848-esteemed-reptile-851f@gregkh>
Content-Language: en-US
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <2023102848-esteemed-reptile-851f@gregkh>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: bagasdotme@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b="K56JJpq/";       spf=pass
 (google.com: domain of bagasdotme@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=bagasdotme@gmail.com;       dmarc=pass
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

On 28/10/2023 17:23, Greg Kroah-Hartman wrote:
> On Sat, Oct 28, 2023 at 02:02:37PM +0700, Bagas Sanjaya wrote:
>> On Fri, Oct 27, 2023 at 08:28:04PM +0300, LihaSika wrote:
>>> Change lower bcdDevice value for "Super Top USB 2.0  SATA BRIDGE" to match
>>> 1.50. I have such an older device with bcdDevice=1.50 and it will not work
>>> otherwise.
>>
>> What about below description?
>>
>> ```
>> Some old USB hard drives using Super Top USB 2.0 SATA bridge have lower
>> minimum bcdDevice value than currently allowed (1.60). Such devices
>> cannot be used by ums-cypress driver since their bcdDevice is out of range.
>>
>> Lower minimum bcdDevice to fix that. 
>> ```
>>
>>>
>>> Cc: stable@vger.kernel.org
>>> Signed-off-by: Liha Sikanen <lihasika@gmail.com>
>>
>> Is your intended author name in your From: header or Signed-off-by: trailer?
>>
>> Also, don't forget to add Fixes: tag; that is:
>>
>> Fixes: a9c143c82608 ("usb-storage: restrict bcdDevice range for Super Top in Cypress ATACB")
>>
>> When above reviews are addressed, resend as v2. Make sure that the patch
>> subject begins with `[PATCH v2]`.
> 
> There's no need, I can take this as-is, thanks.
> 

OK, thanks!

-- 
An old man doll... just what I always wanted! - Clara

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/68ad3c1c-bc5b-4dd5-9183-202d8b04b45f%40gmail.com.
