Return-Path: <usb-storage+bncBDBNLW4X7MDRBKFVQGVAMGQEC6ZHV2Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A14C7DC3E9
	for <lists+usb-storage@lfdr.de>; Tue, 31 Oct 2023 02:38:50 +0100 (CET)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-581e1d59302sf6320645eaf.0
        for <lists+usb-storage@lfdr.de>; Mon, 30 Oct 2023 18:38:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698716329; cv=pass;
        d=google.com; s=arc-20160816;
        b=wQWcRICe9VQz+0zHacW63AKAQqNx0LjE1nv4WdxUnV2s67paDM5g1ZiOtZ9gbuqCSz
         AaZEmsmQmKKT1nEo0Cu0F1KUNPHw+1dLZ+KKn9jJjWFe40Ywvzn4TprwmxGEQPr2QoMg
         1g3b4yF9Dv5NYLPeuQthOTausf3GKA8wEyCBekND43tcHPv31DQkvrciUK6P7YwlvovB
         CXDbPCFWWBU//seKwOHfmuvV0lA0c2WOOoNdPV9FsgJ/k2oYDiwNr4m9E9J6bY+1Gm+h
         oz4nW4SJGpstV/U8FFOwHclHl1hDKx67oQre3QES+/2F7A+5q/cr8AusA8av8DxVylzy
         lepw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=Sq0yabVZ48X059B+8BvKIrzDVseM9dcoO+GiVpLZ4/0=;
        fh=X4/+oUH6890wVHH8omYbn1m5fUCHL3dj8AI0qLT/BTk=;
        b=lnNQ1HAXU0zcV9f+LXAYu5owXBxdIyN291OUg1MmKbHO6sR4ieZ2yUaXItSiO7f9xB
         8X6LMCxQUb0R4zf/ifXTThnRTj5LFszG1++e44Pg5Mq8+nbHtIP/ANGR3Y5mereW5JtS
         iG/iYKDyEUL+IFjVJ2+t1tXPYYk8NN3SAw5hZppvjCz4PLdpYIuu46vqV+Sr1rMNItQz
         vJn+czCt2fSS08PDikNkqqsZwYSsWsrL8gyemdCIiBxIsd2PRutAno9Eooroo3EfN1Pr
         8zJxcQDYMss62+Pyb0ET6Wunxo6yTtFWF1dS6hO13TwyJ0XRu1n3GuBBjVlfn52D2a6a
         kqKA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=softfail (google.com: domain of transitioning lihasika@gmail.com does not designate 62.142.5.110 as permitted sender) smtp.mailfrom=lihasika@gmail.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698716329; x=1699321129; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Sq0yabVZ48X059B+8BvKIrzDVseM9dcoO+GiVpLZ4/0=;
        b=BEkEsMBTexIJmEhOa5zLcMFNMdpZ6o0+3lNmFK/1ZoCpRAemOp6nKf9kDLTWIkyCYs
         HlvxW191srgq/jGfSsZcqDxXMO4SVcfsT77wXy9oD9qW/rQDzb2XTRaZQrLeeOCbsL5W
         pLfwrzSo/VHKkbJvOB3QsGKBMJcdQy8G9L6Lk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698716329; x=1699321129;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sq0yabVZ48X059B+8BvKIrzDVseM9dcoO+GiVpLZ4/0=;
        b=SmyHvMyAEnJTgzNqDkLlfJ+MyggyYNrL3aIn2NqpeuVQzy/9ujhN+qWHTCQjaFAxRZ
         233MfWjvuF/TDm86KJVngH/Nu7wup0Vs5fssEpRaQB3qtTLbUmcNJbi7XCCsHw8hveec
         VglzZIOxxiGnDkYZkjfFjZ4OqVbsxoYz7jf+rGZOJUvW0iNl6Z5uQB4FORy843P9S1yl
         lTVEUTbIkY6bU85WvOk3K9XYl49eQK7XnwShxpccLDv+oEZObOce+uyyTjqRI+C7DiPG
         8RdElgXmvfEtzcq7EereRMYV44odRSsTm2E8uBl1g2KDSpjrk/mRokNcVzlxuX4C4jsk
         irVQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YwaLKjWOnchFNCFa1pjBg96k65V5vg5qI1qJmKrjF2pm5SsC2v6
	bg6sJev9HX+Xf0Pv58CfJfAe4Q==
X-Google-Smtp-Source: AGHT+IGMYB74TcAKzu/NsaeboeihyteuvQeQXUgokzg21cUzLYqjQV5U0XkeZFkRoQ+cH6OxGcgicQ==
X-Received: by 2002:a05:6870:95a2:b0:1e9:b537:51ef with SMTP id k34-20020a05687095a200b001e9b53751efmr11189000oao.31.1698716328955;
        Mon, 30 Oct 2023 18:38:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:8616:b0:1ea:d76a:4f02 with SMTP id
 h22-20020a056870861600b001ead76a4f02ls100298oal.1.-pod-prod-03-us; Mon, 30
 Oct 2023 18:38:48 -0700 (PDT)
X-Received: by 2002:a05:6870:3645:b0:1e9:adea:77fd with SMTP id v5-20020a056870364500b001e9adea77fdmr6055811oak.7.1698716328606;
        Mon, 30 Oct 2023 18:38:48 -0700 (PDT)
Received: by 2002:a05:6808:201f:b0:3b3:ed04:dbd0 with SMTP id 5614622812f47-3b51f763006msb6e;
        Fri, 27 Oct 2023 05:15:50 -0700 (PDT)
X-Received: by 2002:a05:6871:8198:b0:1e9:858e:ff23 with SMTP id so24-20020a056871819800b001e9858eff23mr2209365oab.55.1698408949980;
        Fri, 27 Oct 2023 05:15:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698408949; cv=none;
        d=google.com; s=arc-20160816;
        b=v28wo4+lK6xsdNZbptbe1G1keS/d/+Zo0ZXuYdd3q49uywD51ulrBNxTKXqBipIk3D
         goZjpTxfn36QDGb3REEG3Fy0oNvrKyD0b0eB3LBlTS4dGYzH9z4GtOH4Ix8PV8cA2Hl4
         PQyy5PMpcKqVm7KI05uMMbHh1prHEDlz0QfSrl3WDnMZY4uk7A3B3F2QhsYgXuVWLEf+
         GcygGOi5JxVMOUSFZWMlgrNnJagtdVO4d28Y2xiapXVO849dtyOyd1s7KX+AXQRYMKbi
         ENOh5HcjS12MdzAw5z+Ev40pWKE36P8M5DHk0T+SQUTQEO5rGYqHqe7oU///+/vKRm23
         IaHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id;
        bh=oN4qWS22f0aWQJEsh9X+eWn+Wt1CsbQCNbCIR9aWvoY=;
        fh=X4/+oUH6890wVHH8omYbn1m5fUCHL3dj8AI0qLT/BTk=;
        b=cWvBcykfdE3Vz+Zpi40YHC45iQ7xwlqZtI9QE3AhTrdewdBzzqOlEgUzJMumitxTYm
         S/84i5smmVko27804x6xk1RHXZLd98YF3g98jOIuVyxcRChCYg+Gxw6mX7YaEWCguAMK
         OyLDBT+On96/iO90q4zsjen1C9XeGU3r1yx8C0jPCJDZzlbPoMbpaZttW3RObNufaVLD
         C3pe44oWuR8V2fxs6S2MzCBV7vmKyt2R2/oyPk1r1ys6t4oo8dSKuLao54UUtDyzjcvr
         J1Z/0EFClhy7QhZBGvgdzwrK06WA3XN4WWFt5Y70ChOvFXBeT8bKfZoG+2xBo/LIMYpy
         usjQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=softfail (google.com: domain of transitioning lihasika@gmail.com does not designate 62.142.5.110 as permitted sender) smtp.mailfrom=lihasika@gmail.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from fgw23-4.mail.saunalahti.fi (fgw23-4.mail.saunalahti.fi. [62.142.5.110])
        by mx.google.com with ESMTPS id t61-20020a25aac3000000b00da0e230ffe2si2662051ybi.413.2023.10.27.05.15.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 05:15:49 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning lihasika@gmail.com does not designate 62.142.5.110 as permitted sender) client-ip=62.142.5.110;
Received: from [192.168.1.15] (81-175-205-118.bb.dnainternet.fi [81.175.205.118])
	by fgw23.mail.saunalahti.fi (Halon) with ESMTPSA
	id 8f3f22bf-74c2-11ee-b972-005056bdfda7;
	Fri, 27 Oct 2023 15:15:48 +0300 (EEST)
Message-ID: <055de764-c422-4c22-a79b-dd4db56122ce@gmail.com>
Date: Fri, 27 Oct 2023 15:15:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] [PATCH] set 1.50 as the lower bcdDevice value for
 "Super Top"-device in drivers/usb/storage/unusual_cypress.h
To: Bagas Sanjaya <bagasdotme@gmail.com>,
 Linux USB <linux-usb@vger.kernel.org>,
 Linux USB Storage <usb-storage@lists.one-eyed-alien.net>
Cc: Greg KH <gregkh@linuxfoundation.org>,
 Alan Stern <stern@rowland.harvard.edu>
References: <ZTsR-RhhjxSpqrsz@debian.me>
Content-Language: en-US
From: LihaSika <lihasika@gmail.com>
In-Reply-To: <ZTsR-RhhjxSpqrsz@debian.me>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: lihasika@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=softfail
 (google.com: domain of transitioning lihasika@gmail.com does not designate
 62.142.5.110 as permitted sender) smtp.mailfrom=lihasika@gmail.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On 27.10.2023 4.27, Bagas Sanjaya wrote:
> On Thu, Oct 26, 2023 at 10:39:14PM +0300, LihaSika wrote:
>> On 26.10.2023 22.14, Greg KH wrote:
>>> Please submit a proper patch to the linux-usb@vger.kernel.org mailing
>>> list and we will be glad to take it from there.
>>>
>>> thanks,
>>>
>>> greg k-h
>>
>> OK, here it is!
>>
>> Best regards,
>> L.
>> --
>>
>> $ cat lihasika-unusual_cypress.patch
>> diff --git a/drivers/usb/storage/unusual_cypress.h
>> b/drivers/usb/storage/unusual_cypress.h
>> index 0547daf..7b3d5f0 100644
>> --- a/drivers/usb/storage/unusual_cypress.h
>> +++ b/drivers/usb/storage/unusual_cypress.h
>> @@ -19,7 +19,7 @@ UNUSUAL_DEV(  0x04b4, 0x6831, 0x0000, 0x9999,
>>   		"Cypress ISD-300LP",
>>   		USB_SC_CYP_ATACB, USB_PR_DEVICE, NULL, 0),
>>
>> -UNUSUAL_DEV( 0x14cd, 0x6116, 0x0160, 0x0160,
>> +UNUSUAL_DEV( 0x14cd, 0x6116, 0x0150, 0x0160,
>>   		"Super Top",
>>   		"USB 2.0  SATA BRIDGE",
>>   		USB_SC_CYP_ATACB, USB_PR_DEVICE, NULL, 0),
>>
> 
> Hi LihaSika,
> 
> Please follow proper patch submission process in order to get above patch
> accepted. See Documentation/process/submitting-patches.rst in the kernel
> sources for how to do that properly. You may also consider adding
> `Cc: stable@vger.kernel.org` trailer in your patch to mark it to be
> backported to stable kernels (including one you use).
> 
> Thanks.
> 

All right, here's a new attempt. Is it OK now?

Cc: stable@vger.kernel.org
Signed-off-by: Liha Sikanen <lihasika@gmail.com>
---

diff --git a/drivers/usb/storage/unusual_cypress.h 
b/drivers/usb/storage/unusual_cypress.h
index 0547daf..7b3d5f0 100644
--- a/drivers/usb/storage/unusual_cypress.h
+++ b/drivers/usb/storage/unusual_cypress.h
@@ -19,7 +19,7 @@ UNUSUAL_DEV(  0x04b4, 0x6831, 0x0000, 0x9999,
          "Cypress ISD-300LP",
          USB_SC_CYP_ATACB, USB_PR_DEVICE, NULL, 0),

-UNUSUAL_DEV( 0x14cd, 0x6116, 0x0160, 0x0160,
+UNUSUAL_DEV( 0x14cd, 0x6116, 0x0150, 0x0160,
          "Super Top",
          "USB 2.0  SATA BRIDGE",
          USB_SC_CYP_ATACB, USB_PR_DEVICE, NULL, 0),

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/055de764-c422-4c22-a79b-dd4db56122ce%40gmail.com.
