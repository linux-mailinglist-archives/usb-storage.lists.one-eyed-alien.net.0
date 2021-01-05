Return-Path: <usb-storage+bncBDMIVIFEHQIOPQGR74CRUBHJ3QWJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 519DC2EAB2B
	for <lists+usb-storage@lfdr.de>; Tue,  5 Jan 2021 13:49:45 +0100 (CET)
Received: by mail-pg1-x545.google.com with SMTP id n2sf20922330pgj.12
        for <lists+usb-storage@lfdr.de>; Tue, 05 Jan 2021 04:49:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609850983; cv=pass;
        d=google.com; s=arc-20160816;
        b=C5R/CqyvTuiN4xpNgRiGoS37eYASqAvur3HvW/QlRM4/9sxxXZ8FBy9WTd3p+oNSQV
         ZtCNQDHsucDZfPEDVB92zYnFcjRbhjIj+eIyYYicRKwtznAUh7BNZLFDOajKIMSoMW4g
         BytbazrPaYa2NX+dfhAs8iVdN1kGiW243MhnhNtkeHUzHhi5OWx1ydINTnVb+toyKr8k
         QObRtrydvc7xnxjDTEplOZVLgSFt/rCpryPVZIKYjK4eYFAMkzqww4VWeljs2A9wCXCr
         lzkEor9ItQ+TnrUBUMwiChJ663PUzP0g29e+4+C8ZZ5s4fFeN/w2Qn8xfr19e62jJZEX
         GwOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=UqONK1p4DVGJTW2yZsMZ91+g3yBelGmdCm2KmySiz7w=;
        b=NhEPVW40F1GsnOVH7Qpi/tRg8CAXEDVrIx3vW/cnm8QS7Bx/KzMXBiUOlGY1dByBWP
         uOaf3WcOJP7oleNk+2EU9ENtT0JfO60JoI15oJBTgNYx16jhR0bsCR86n3kZ9g00Hsmy
         6FWd0VaMIU3NUD9KEbPlYJZeUFGXLUvu4xthlMkSnS5qNiyjyOejMLJ34Dy7rX0V6xcd
         sRFdhDxMmTsho2kQlejPhaug/16J850V+zddavAOh4epd76adWNw7Ouz604Nt0g6vRa5
         LxfoOlC5SXSFv7neUFud/pv7biauoB0QfrpftnYEct3myJ95sUDYnPzUcTkTXwlFqZLQ
         Esbg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UqONK1p4DVGJTW2yZsMZ91+g3yBelGmdCm2KmySiz7w=;
        b=FBcjehIegZHRiFPPQUx6GNDWyPeDBpsWrvDtH0mSV9ezKtPajpcqhTIkmV9kFrJRgm
         dgY7PSmrE8z7tnn5sKsPjYwrUCkWNx8Rmz7Oy3pWZSD0k5zI1aV5aovKAJrhxnQYQlaM
         JW/xejor5P3Pvotxh+XtUOxn4LjDnuLWS8Y/0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UqONK1p4DVGJTW2yZsMZ91+g3yBelGmdCm2KmySiz7w=;
        b=KA8Rwa4ALIuYr1Z8m7+/pFetK1R3TOREshHAIBnZiHVmCHhAeJ0vC811+TDWEpA+Gt
         AF2Eh3jRUY2L1FssnHBxw3vp9mANbzjTAmBTK24kwm4JMB8p9IdJGRESqfEkEp+eNAgT
         jxdPD3et7wviRlOOjjXgQVTEBADGb4+6jEJQeTn7+5UqAlBPgEa2IFIVHxNLm9SqdUnh
         YRV34PRguuygCWEu6Awcepy7rT9dfTg64c9w7zGYwkxNHaxgC3VK6ToU1u0vi58n1VO/
         8wPim2yx30+puRwSkazSB1MsEmfSAAwhwUbRrh/jwNlwUU10smrgxwm7WXeSCD7Aqg7j
         2SaA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532CPtMtA5Nd6deYlXQkPOJv9m8mBbfBy8vHUJs9bA92qBeHxp0B
	y/F3MpcCvMVXgl7EsYGHMLze5w==
X-Google-Smtp-Source: ABdhPJzBg1EBv/zO7U0N8KTQBXEUf3jPq6O0VMPSTw9kIRnHJElRTUxh97oZ/m/ET7TX0hLHEci03g==
X-Received: by 2002:aa7:8811:0:b029:1ab:9e4f:b8ea with SMTP id c17-20020aa788110000b02901ab9e4fb8eamr66140438pfo.78.1609850983474;
        Tue, 05 Jan 2021 04:49:43 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:ee90:: with SMTP id i16ls1515325pjz.1.canary-gmail;
 Tue, 05 Jan 2021 04:49:42 -0800 (PST)
X-Received: by 2002:a17:902:9681:b029:db:fd65:d10e with SMTP id n1-20020a1709029681b02900dbfd65d10emr77670191plp.6.1609850982673;
        Tue, 05 Jan 2021 04:49:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609850982; cv=none;
        d=google.com; s=arc-20160816;
        b=O/9fA/p1oHbCnjMUC2Nd4x4Fg1wmcNTDFqKBRgUAcGu/jNgAL/kWv9MiMCLo1zuQr/
         gf6LwAZlj8c92TejuwFNUOz24ELJKKiyaQ1uxM3FRol1RMHCPDx+S4M0hc+jRfedJX25
         1sn41sJ7LlmFDGy0V1TU+WNbLHawcYfiJCs98B3RlOsLmHoU03pTbdO9ZnRS7OWK0BkT
         uNBYuYN1ac6N2U+H20MjeTdHGGXXapdyeRSu/idk/ZAprxvg0+fOOoXeX7ckZ0dXGhmx
         Tj58O97nnHy8wFXD97iqz+AoZjwDwThnNHD2x7lu5VezoqLnHTjejTlGcjkdyar33dly
         F+vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=X8FjshKdXY+2AWs5z5ou0M11+37qgAwyf4eHHDJLyGg=;
        b=X+zG3S+pvjTjWFGjj4lXJ2nIHeX8ArOndp6DMaQT1GzQ++M0V/mCaG8uZCuCW5nivZ
         ZYxuxXgpmYMsF5rx07GnrQmsn7QSjpKw/lb68DO+YT4Cko9WeuQVx45NZ6zE7xyDBgsG
         rhbe/Kk2aF7d45srtztqc6pT8XyO2Rh4BLOGsRfp3LBzM1HvJn+C1pC9HF9K0Nrg2wgx
         du02AFGUlyVe29lUvoEZUsGU/IGQU59Z0snlooYKqLmh5lJFJ/tko6gOa0hIZCyrM65Q
         9Y+SI+72vABJdHg9olpc+mkokwiE6Dpa27Jm/rA20dYy2kt7ltT59huhqx111R/kijbJ
         UmeA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id 59si58925849ple.78.2021.01.05.04.49.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Jan 2021 04:49:42 -0800 (PST)
Received-SPF: pass (google.com: domain of oneukum@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 487B0AD0B;
	Tue,  5 Jan 2021 12:49:39 +0000 (UTC)
Message-ID: <f66f965e30ab44bb3a9a2c0f63383e603011932d.camel@suse.de>
Subject: [usb-storage] Re: [PATCH] usb: uas: Add PNY USB Portable SSD to unusual_uas
From: Oliver Neukum <oneukum@suse.de>
To: Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Hans de Goede
 <hdegoede@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alan Stern <stern@rowland.harvard.edu>, usb-storage@lists.one-eyed-alien.net
Cc: stable@vger.kernel.org, linux-usb@vger.kernel.org
Date: Tue, 05 Jan 2021 13:49:35 +0100
In-Reply-To: <2edc7af892d0913bf06f5b35e49ec463f03d5ed8.1609819418.git.Thinh.Nguyen@synopsys.com>
References: <2edc7af892d0913bf06f5b35e49ec463f03d5ed8.1609819418.git.Thinh.Nguyen@synopsys.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: oneukum@suse.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of oneukum@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.de
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

Am Montag, den 04.01.2021, 20:07 -0800 schrieb Thinh Nguyen:
> Here's another variant PNY Pro Elite USB 3.1 Gen 2 portable SSD that
> hangs and doesn't respond to ATA_1x pass-through commands. If it doesn't
> support these commands, it should respond properly to the host. Add it
> to the unusual uas list to be able to move forward with other
> operations.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Acked-by: Oliver Neukum <oneukum@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f66f965e30ab44bb3a9a2c0f63383e603011932d.camel%40suse.de.
