Return-Path: <usb-storage+bncBD3JNNMDTMEBBTNY2PWAKGQETCXMCSQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A58AC8FAF
	for <lists+usb-storage@lfdr.de>; Wed,  2 Oct 2019 19:20:17 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id r24sf13618pgj.17
        for <lists+usb-storage@lfdr.de>; Wed, 02 Oct 2019 10:20:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570036815; cv=pass;
        d=google.com; s=arc-20160816;
        b=U9itQLqAop6ebbeynQfsawFN1R8BMd0A5fR6ODFyVSFMKVRDe3qzPcTii1Shd2wrZt
         sw5KdbQdQ5Xr9AIkNjQRXlYaLSaLe0YWOuL9HLJRnWlkMkrZx5Scueld/DwPcfjdWPJn
         DVHobjf5qofCiEEQlLa1IjTGVW1pHnMaZznEaMATZijEw/XlrD6yghPqMRHj01Sy+Z15
         dsqkaUzQm4Cld2So56CfHeDlnjXv3n/Wcic7LrC6dNdAeWy4TFcVlqTYVL7yRb0Pczsi
         zamaDxOMvUhLHpzge954IzFAM/aBfMb/DsgS1K38CSQUxw5sKyOr1VW2adL+faGWeeal
         GLqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=MgrCRrJSKzk+g0KxCiFjpVWORCwPDNjB3aEYP4S1cgs=;
        b=QUKIDoTA06VftB5y4fMNX9HUuAxgEqz42G0Tw97i0/VJ4DboiFTr1g0YlQWaPleNEm
         0bJyJsc8rqWcfq78ODp4CNhoGQ9ka3j3xSKqaFXhbpQjjAYJF/XnoNuIrrVRgbRSBAZB
         cPBWBbJG9JB0zfzcI409JUpOtxU/afPLQ7U6HlXl3zEIzUIzhw2JNz1kkvk+RrUhOmlr
         vqD//mvAExKTjPXkdia4bWufhB/8Og5T6RNIPGqb6Apju5pwvfbHhnjJGdL8eMlUfGom
         4Eefp7K5y0x35GSEceujKLy+SLxcKXGi5mKa0A1GDIGYn4E/o78Mq/xIrOipHxXhTExZ
         IxOQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MgrCRrJSKzk+g0KxCiFjpVWORCwPDNjB3aEYP4S1cgs=;
        b=l2Ak78HMmaK/BPrYM57gAj22Dp624H18qCmJLh3ODX3kRNH68rnN3VByM69CsOvW9R
         +HuEwFEbQwSKwKPKYsPPbUbeBqyK8j754J9tOVTtY7F7EMuFUayWEIU2xO2fj3x+9t92
         CbsrQeQomtdsVjgVQG4bs91y+eyUizawTkzKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MgrCRrJSKzk+g0KxCiFjpVWORCwPDNjB3aEYP4S1cgs=;
        b=G9VLczPR003gPWLbplY8k4iw48lpXKOI14h6pcKy3p6KqvfoWVKLZt/VAHqYQnhYkZ
         cleBozJytfSgemNa1ABCuibWqQ2gFLTW0j0ru2loNc/WtdUvu0l+4jecx9cYUW3tgmAw
         1dvtOSIFxLCWe/HVDR76tDrmQNTIQeOzB0wkr4jwQHsNF4H5ok8KvSvoEDjAHyUgdpNr
         +AOjhKfvDn7j/qZt6t8tm4e6Nht7Gm7MzcyS+f7mIdXoOinhG9CruTxxjxEY5TuFKbHb
         T1dNDlDjYettJxbKNX0/dneYq4joBe6I8a7oZ150GWpY4sAVS27zAsw1rvDNdcFGPP7D
         WAaQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAURRDtbBdGPH9vvwi/ePv82lSrKZkV95SchqaD/hxOpIb93q//3
	DAAA0RDh17hH+GK2BzgKs7dbTQ==
X-Google-Smtp-Source: APXvYqzre1uSHG9eB4BvulP9fGm751mvVXybNncYqr6kaEMgY3F2wL9Ng+b71AJSDxkTdSpNyKtRTw==
X-Received: by 2002:a63:7556:: with SMTP id f22mr4919148pgn.222.1570036814296;
        Wed, 02 Oct 2019 10:20:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:6307:: with SMTP id x7ls763643pfb.0.gmail; Wed, 02 Oct
 2019 10:20:13 -0700 (PDT)
X-Received: by 2002:a62:7f11:: with SMTP id a17mr6039527pfd.193.1570036813388;
        Wed, 02 Oct 2019 10:20:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570036813; cv=none;
        d=google.com; s=arc-20160816;
        b=KxCc7gIGLIyEOKDVTxfrMMUdEDbWzEqFPdtijzccdUdiMGY+jDzifcZ5r5RnjDrfrA
         dXGmqAjR6LV52CNiBgBqnjlikdBvvAPP5QLZqYEV/HT8vfr3JNeFh1lskqwkCMQgVQ43
         rJ9o4dwdyUj7fqlMSXLde/ulv87BiGj3I8w04K1eTFA89yfc6y6YElo+L3+SCnZOK+OC
         QZ1tbK/235ixBLceeJaERGXVEpZnFzUyPWL7wLM7jRzD9+15kSk8Sw/VUBf9ewJR/Vlf
         jghjOCbT5j+/DtATuWUDrTKCQ+Gt7Tq9UhvaZlC7irV0x90A20q2Il71wtpPfYGJTtNY
         2qnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=+b87VPN3ehCNTTZtrXC4S7AEpOpBZmJhjs1RLuGgjKM=;
        b=Cm4rILhWDPbSmvaEhZEtoHsUXZ2MaorWQAoSbXFeP6KzSwUcyOvnkm56poD9dMKaN7
         ZVCBkATpnCjizTLEo0FoLkejErHHQVLyzdNL3g6hjD9W1gqLQVXyJz3VAIoz363tRaO8
         iK9j80CufOEOSoyO5rEumV5Zg1mv4Ujzipyd8wXO3t0kzuyhl11aWAFyh6snuUoxBwFt
         FS6XHOEEn7s82CjBEkK/kgIGUyJxLckkhszfGfie5CpCnjjLX71fzv08rp+rdl82CeVm
         VQKOflAdE8klc23AzTMa7gJtYfjdiElR+5WuD+g19Ium6+uHyogNkfigj0RwUMYOMNon
         XXWg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id 71sor6891112plf.22.2019.10.02.10.20.13
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 02 Oct 2019 10:20:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:902:169:: with SMTP id 96mr5046016plb.166.1570036812965;
        Wed, 02 Oct 2019 10:20:12 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
        by smtp.gmail.com with ESMTPSA id q71sm6742509pjb.26.2019.10.02.10.20.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 10:20:11 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH V3] scsi: save/restore command resid for
 error handling
To: Damien Le Moal <damien.lemoal@wdc.com>, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
References: <20191001074839.1994-1-damien.lemoal@wdc.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <b2f4bf11-4d35-ba46-99d9-f6241be6c982@acm.org>
Date: Wed, 2 Oct 2019 10:20:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191001074839.1994-1-damien.lemoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted
 sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 10/1/19 12:48 AM, Damien Le Moal wrote:
> When a non-passthrough command is terminated with CHECK CONDITION,
> request sense is executed by hijacking the command descriptor. Since
> scsi_eh_prep_cmnd() and scsi_eh_restore_cmnd() do not save/restore the
> original command resid, the value returned on failure of the original
> command is lost and replaced with the value set by the execution of the
> request sense command. This value may in many instances be unaligned to
> the device sector size, causing sd_done() to print a warning message
> about the incorrect unaligned resid before the command is retried.
> 
> Fix this problem by saving the original command residual in struct
> scsi_eh_save using scsi_eh_prep_cmnd() and restoring it in
> scsi_eh_restore_cmnd(). In addition, to make sure that the request sense
> command is executed with a correctly initialized command structure, also
> reset the residual to 0 in scsi_eh_prep_cmnd() after saving the original
> command value in struct scsi_eh_save.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b2f4bf11-4d35-ba46-99d9-f6241be6c982%40acm.org.
