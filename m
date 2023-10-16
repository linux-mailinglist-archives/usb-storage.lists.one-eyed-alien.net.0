Return-Path: <usb-storage+bncBDTNDO5RRYJRBXHOWWUQMGQEGD355PY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDBC7CB18A
	for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 19:48:13 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-5368aae40d2sf3811356a12.2
        for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 10:48:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1697478493; cv=pass;
        d=google.com; s=arc-20160816;
        b=XYTuwChLesSXAyvMOKrR5pAWWNj+HdvPnCLqkAPWVP7o9p14Wq5GzaVeqNLmt0lGwf
         ICnbb3jEVS9FlZrk88iBPcKUYoRMSV8f8GMMHuXWrmZH+8LTntbz0TiUdgsBRwSpFqR8
         MCx7A3v0I9tpFkTS7PA5PUFzoebYJ6m8iiVAHmF7KN3tSR+M65bBTRolP38OneyCKwhZ
         7kTMASyL5T/TECIXDGXgycNZz9dNmzI5PbfY2ZB3QIDDsSBbzeRnPIFhUa1eLde2hKIA
         40KjIy7TeI/tkYygXY21n2TTaI1X43tv2AxM8ZsT8qqnzOSkMGWqgHCxCaCIIs6+Rz8K
         TZZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:autocrypt:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=mUjEsBZIrapPh34elCm5/JpFrYE3A6mbfr23vuR9ibA=;
        fh=68ZrbdVtruJDNZMsmlvBjz5oliGVED5rl6IClFx+37k=;
        b=HcenL5IIU3qLPryHXc800bQhldgq+PNvtLch+2WJucK1qNN5hC2mvWhcw65ZGWlUCO
         E/AMZDtEq0HgM/RCImLTH5dZv73Gbzh8cIM4/Y/MA6J6H+gouR3bYFHzXKDQwbQ1RvZ3
         1Jp70Xor8QzlYZQfCX+QIBRJdDxrAWHX2gzZqM+rY3bs5NsM8eBIxqgnUyU+GRNxkgVU
         mWBGCtSmp7/xeNLqon5EX0WGL0AVoRmtfuSBbx+MHMGlk3GzHvmXMMrX1I/6Rhi5yPfC
         pBezfwcp8k4j7N3YiL1nK374nZgOOcF7SgUKoOeuadqf4VoeXbyrvKEg2xk7EuWdBSFc
         cVSg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=OQY0jA9z;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1697478493; x=1698083293; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:autocrypt:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=mUjEsBZIrapPh34elCm5/JpFrYE3A6mbfr23vuR9ibA=;
        b=BRqFA2p/fkp1r9z+bgvhSGoHvImowZsX3nn6IDt2xHDqEwtg8CZdJrxHWKgLeoq0Qm
         iAqY0X2QM0aG2j+woV9Uzf8G7C9In1NJWvh2hTBv7XZyDt3lvt9vHXGxgjOwzRognSbu
         gTLvij7HXgho2hnKq035My61HFh+ADXZ0vayA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697478493; x=1698083293;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :autocrypt:from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mUjEsBZIrapPh34elCm5/JpFrYE3A6mbfr23vuR9ibA=;
        b=S5qUkg4LfyLOIQrQgM+Stg2Bs7slgjUHQtDngSk7XVCs5xr9KeJ0Lq5rh5D5QKZf+U
         qEk+CFiM3dsUQcVdr2F9KPppSwM7756qd6j4p4yQ7fDRzVnr5GXZ0euAkvWW2wnzf3ai
         B77A/04Ydb42++fr4ZjknSlFZfoNSYOsdPu2BVpv49GxaOJ4o8fcSZdH0yKLcq3kNXpH
         ayL/UtRnSY4chIELxH+dAqxVxV0cXP14RkGpjTuIycdeePAcyqvtnCyW2KxkIZNSWE+O
         1WAZycQtd9dt3q3FKTG8vcUH72trHOJqnVAZf7x92NcAXjoARRc9ULYzGEva9qnF8bNT
         ao3Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YwYI/LrNv2Kv6UAsE+VAqLErCp6O2aCfLOQpNXPW3qHF3jAkop+
	OuBRu6Ur+T9vu2Iy2zc/isdAbQ==
X-Google-Smtp-Source: AGHT+IExq8LtFLYI3ln3rkLksdYKsBYM/xuNtDPSIUx/X2dhszx+/5ORhd1AWY2V7OHRCeG3RGF8nA==
X-Received: by 2002:a50:9f68:0:b0:53e:37d1:a31f with SMTP id b95-20020a509f68000000b0053e37d1a31fmr7882198edf.28.1697478492919;
        Mon, 16 Oct 2023 10:48:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:4017:b0:53d:beed:e28f with SMTP id
 d23-20020a056402401700b0053dbeede28fls257950eda.1.-pod-prod-02-eu; Mon, 16
 Oct 2023 10:48:11 -0700 (PDT)
X-Received: by 2002:a17:907:1b0a:b0:9be:e278:4d45 with SMTP id mp10-20020a1709071b0a00b009bee2784d45mr6535291ejc.15.1697478491521;
        Mon, 16 Oct 2023 10:48:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697478491; cv=none;
        d=google.com; s=arc-20160816;
        b=b+M/wSIZKMeWne9+EydScQAnfrz9RkZfvWX/dh7M+wOubxqtTVkBh3X1bNOYjN3Ipa
         WcPHG3m59gilesIWyn80mKyZ3e/gSVOXhv8ENz4X616rAsUcR7erOkRh6+XbZS+BuL+B
         lfFYQuJ2xF/FtguxWTcKgPY0Y/BOdqQcUmjqtDk8E4OCcTGrAfk21WJhQZS+wq0ybyQt
         uDryuOyIUr8UAieWldJVV2rPmSyFLQPOCtbLrTNAVsmma+cSXtJXT5mht6Xil/Hgqb6O
         wYgSGO5fUHQPdtLzor7feibESt4/e+Sn/BoTxuB6vIbMjO9bGSkM5I4isE5iy6h9E6xb
         NlwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=2u/sE5tw3JkSJIFO6XP0kmxdG/J8eciXhjToE7NHk6E=;
        fh=68ZrbdVtruJDNZMsmlvBjz5oliGVED5rl6IClFx+37k=;
        b=Ad8F/oqlvcdDrPt644PgOlm7bIBuhf7a3rJURHKjvbOZBwHGxWYO/0tOBWO4Zg3sgz
         wN7vp+ar1VZSOotDJLB6YGvCXxOHqQA+BjgaIBFHcwIU6iaAP/ribzxfXA7IUjowD0ac
         xdWrTjmj1InrHyNZo08MUupaxz2SnxEnBVXic0IKLbDWLM6T7gowx4DSv5mjs0evkpjy
         X9d9SPFg4oqHX67bmGWPtJGL44VJ8XGuaz+dN+K1FKuDy4hzJARJdkliykzI0mK2G+YU
         VwDztNb39czeD0+spR0uhuDMsrY4pM6prL0r1H1l0j2f0W7ldxGKDusOV94qbLCenEgE
         8D1g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=OQY0jA9z;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d17-20020a1709064c5100b009ba00b5cba0sor1549102ejw.14.2023.10.16.10.48.11
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 16 Oct 2023 10:48:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:907:3e0b:b0:9c3:730e:6941 with SMTP id hp11-20020a1709073e0b00b009c3730e6941mr4787888ejc.66.1697478490980;
        Mon, 16 Oct 2023 10:48:10 -0700 (PDT)
Received: from [192.168.2.30] (85-70-151-113.rcd.o2.cz. [85.70.151.113])
        by smtp.gmail.com with ESMTPSA id c22-20020a170906155600b009adc81bb544sm4464023ejd.106.2023.10.16.10.48.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Oct 2023 10:48:10 -0700 (PDT)
Message-ID: <3a7d0305-5405-438a-9e5c-28ae2da0830b@gmail.com>
Date: Mon, 16 Oct 2023 19:48:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 0/7] usb-storage,uas: Support OPAL commands
 on USB attached devices.
Content-Language: en-US
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-scsi@vger.kernel.org, gregkh@linuxfoundation.org, oneukum@suse.com
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
 <76575d36-15d3-491b-944e-71253907cfac@rowland.harvard.edu>
From: Milan Broz <gmazyland@gmail.com>
Autocrypt: addr=gmazyland@gmail.com; keydata=
 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
In-Reply-To: <76575d36-15d3-491b-944e-71253907cfac@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=OQY0jA9z;       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 10/16/23 19:33, Alan Stern wrote:
> On Mon, Oct 16, 2023 at 09:25:57AM +0200, Milan Broz wrote:
>> This patchset adds support for OPAL commands (self-encrypted drives)
>> through USB-attached storage (usb-storage and UAS drivers).
> 
> This is version 2 of the proposed patch set, but you didn't include the
> version number in the email Subject: lines and you didn't include the
> summary of differences from v1 below the "---" lines of the various
> patches.

Hi,

well, the first patchset was RFC, so I sent is as "the first real version".
Perhaps not the correct way, sorry for that.

Anyway, if you see the discussion about OPAL change on SCSI list, another
solution (inside USB storage driver) is needed.

So, please ignore patch 6/7, these will be needed, but I have to rewrite
SCSI logic to USB glue/UAS driver.

But for the generic 64-bit flags (patch 1-5), if you see this useful, please review it.

Common requirement is that kernel patch need an user for merge
(and my flag is currently no going to be used without rewrite).

But that time will come one day, and if I can save people time to reinvent
the 64-bit quirks logic, it would be nice to merge it.

Thanks,
Milan



> 
> Patches 5, 6, and 7 look okay.  You can add my Reviewed-by: to each of
> them.
> 
> I've got some additional comments on patch 4 (in a separate email).
> 
> Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/3a7d0305-5405-438a-9e5c-28ae2da0830b%40gmail.com.
