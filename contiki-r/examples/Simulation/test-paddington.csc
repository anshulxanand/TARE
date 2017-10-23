<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <project EXPORT="discard">[APPS_DIR]/mrm</project>
  <project EXPORT="discard">[APPS_DIR]/mspsim</project>
  <project EXPORT="discard">[APPS_DIR]/avrora</project>
  <project EXPORT="discard">[APPS_DIR]/serial_socket</project>
  <project EXPORT="discard">[APPS_DIR]/collect-view</project>
  <project EXPORT="discard">[APPS_DIR]/powertracker</project>
  <simulation>
    <title>Paddington-test-DGRM</title>
    <randomseed>123456</randomseed>
    <motedelay_us>1000000</motedelay_us>
    <radiomedium>
      org.contikios.cooja.radiomediums.DirectedGraphMedium
      <edge>
        <source>26985</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>257</radio>
          <ratio>0.9</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>26985</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>259</radio>
          <ratio>0.5</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>26985</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>260</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>26985</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>275</radio>
          <ratio>0.5</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>1</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>23</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>1</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>259</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>4</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>14</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>4</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>16</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>4</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>19</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>4</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>265</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>4</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>276</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>5</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>265</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>5</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>275</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>6</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>14</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>6</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>16</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>6</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>19</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>6</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>265</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>8</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>265</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>8</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>274</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>10</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>23</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>12</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>265</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>12</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>274</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>14</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>4</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>14</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>6</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>14</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>265</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>14</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>275</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>16</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>4</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>16</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>6</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>16</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>265</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>16</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>275</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>18</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>276</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>19</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>4</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>19</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>6</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>21</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>265</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>21</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>275</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>22</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>259</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>22</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>265</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>22</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>274</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>22</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>275</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>23</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>1</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>23</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>10</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>23</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>259</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>23</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>274</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>24</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>274</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>257</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>26985</radio>
          <ratio>0.9</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>257</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>259</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>257</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>261</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>257</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>263</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>257</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>275</radio>
          <ratio>0.5</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>259</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>26985</radio>
          <ratio>0.5</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>259</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>22</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>259</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>1</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>259</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>10</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>259</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>12</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>259</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>23</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>259</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>257</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>259</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>261</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>259</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>263</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>259</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>264</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>259</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>274</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>259</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>275</radio>
          <ratio>0.5</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>260</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>26985</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>261</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>257</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>261</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>259</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>261</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>263</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>261</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>264</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>261</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>275</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>261</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>276</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>263</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>257</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>263</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>259</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>263</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>261</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>263</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>275</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>264</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>259</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>264</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>261</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>264</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>276</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>265</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>4</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>265</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>5</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>265</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>6</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>265</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>8</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>265</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>12</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>265</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>14</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>265</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>16</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>265</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>21</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>265</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>22</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>265</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>274</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>265</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>276</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>274</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>12</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>274</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>22</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>274</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>23</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>274</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>24</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>274</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>259</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>274</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>265</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>274</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>8</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>275</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>26985</radio>
          <ratio>0.5</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>275</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>5</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>275</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>14</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>275</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>16</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>275</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>21</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>275</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>22</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>275</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>257</radio>
          <ratio>0.5</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>275</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>259</radio>
          <ratio>0.5</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>275</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>261</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>275</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>263</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>276</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>4</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>276</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>6</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>276</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>18</radio>
          <ratio>0.2</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>276</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>264</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
      <edge>
        <source>276</source>
        <dest>
          org.contikios.cooja.radiomediums.DGRMDestinationRadio
          <radio>265</radio>
          <ratio>0.3</ratio>
          <signal>-10.0</signal>
          <lqi>105</lqi>
          <delay>0</delay>
          <channel>-1</channel>
        </dest>
      </edge>
    </radiomedium>
    <events>
      <logoutput>40000</logoutput>
    </events>
    <motetype>
      org.contikios.cooja.mspmote.SkyMoteType
      <identifier>sky1</identifier>
      <description>Sensor</description>
      <firmware EXPORT="copy">[CONFIG_DIR]/bin/udp-client.sky</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyButton</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyFlash</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyCoffeeFilesystem</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspSerial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyLED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyTemperature</moteinterface>
    </motetype>
    <motetype>
      org.contikios.cooja.mspmote.SkyMoteType
      <identifier>sky2</identifier>
      <description>Data sink</description>
      <firmware EXPORT="copy">[CONFIG_DIR]/bin/udp-server.sky</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyButton</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyFlash</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyCoffeeFilesystem</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspSerial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyLED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyTemperature</moteinterface>
    </motetype>
    <motetype>
      org.contikios.cooja.mspmote.SkyMoteType
      <identifier>sky3</identifier>
      <description>Relay</description>
      <firmware EXPORT="copy">[CONFIG_DIR]/bin/udp-relay.sky</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyButton</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyFlash</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyCoffeeFilesystem</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspSerial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyLED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.SkyTemperature</moteinterface>
    </motetype>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>118.0</x>
        <y>54.0</y>
        <z>123.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>26985</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.0</x>
        <y>4.0</y>
        <z>119.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>4</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.0</x>
        <y>0.0</y>
        <z>119.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>5</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.0</x>
        <y>4.1</y>
        <z>119.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>6</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>4.0</x>
        <y>0.0</y>
        <z>119.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>14</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>4.1</x>
        <y>0.0</y>
        <z>119.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>16</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.0</x>
        <y>6.5</y>
        <z>119.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>18</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.0</x>
        <y>2.0</y>
        <z>119.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>19</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>2.0</x>
        <y>0.0</y>
        <z>119.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>20</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>6.5</x>
        <y>0.0</y>
        <z>119.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>21</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>4.0</x>
        <y>0.0</y>
        <z>115.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>1</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.0</x>
        <y>0.0</y>
        <z>115.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>3</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.0</x>
        <y>4.0</y>
        <z>115.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>8</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>4.1</x>
        <y>0.0</y>
        <z>115.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>10</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.0</x>
        <y>4.1</y>
        <z>115.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>12</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>2.0</x>
        <y>0.0</y>
        <z>115.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>17</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.00</x>
        <y>6.50</y>
        <z>115.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>22</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>6.5</x>
        <y>0.0</y>
        <z>115.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>23</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.0</x>
        <y>2.0</y>
        <z>115.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>24</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>80.0</x>
        <y>0.0</y>
        <z>113.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>256</id>
      </interface_config>
      <motetype_identifier>sky3</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>127.0</x>
        <y>50.0</y>
        <z>123.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>257</id>
      </interface_config>
      <motetype_identifier>sky3</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>115.0</x>
        <y>25.0</y>
        <z>120.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>259</id>
      </interface_config>
      <motetype_identifier>sky3</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>85.0</x>
        <y>0.0</y>
        <z>120.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>260</id>
      </interface_config>
      <motetype_identifier>sky3</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>85.0</x>
        <y>50.0</y>
        <z>115.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>261</id>
      </interface_config>
      <motetype_identifier>sky3</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>10.0</x>
        <y>0.0</y>
        <z>115.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>262</id>
      </interface_config>
      <motetype_identifier>sky3</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>70.0</x>
        <y>0.0</y>
        <z>120.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>263</id>
      </interface_config>
      <motetype_identifier>sky3</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>40.0</x>
        <y>25.0</y>
        <z>120.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>264</id>
      </interface_config>
      <motetype_identifier>sky3</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>20.0</x>
        <y>0.0</y>
        <z>120.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>265</id>
      </interface_config>
      <motetype_identifier>sky3</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>50.0</x>
        <y>0.0</y>
        <z>118.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>273</id>
      </interface_config>
      <motetype_identifier>sky3</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>10.0</x>
        <y>3.0</y>
        <z>120.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>274</id>
      </interface_config>
      <motetype_identifier>sky3</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>120.0</x>
        <y>25.0</y>
        <z>120.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>275</id>
      </interface_config>
      <motetype_identifier>sky3</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>10.0</x>
        <y>25.0</y>
        <z>120.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>276</id>
      </interface_config>
      <motetype_identifier>sky3</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.00</x>
        <y>6.50</y>
        <z>115.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>26</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.0</x>
        <y>4.1</y>
        <z>115.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>11</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.0</x>
        <y>4.1</y>
        <z>115.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>13</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.0</x>
        <y>2.0</y>
        <z>115.5</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>25</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>0.0</x>
        <y>0.0</y>
        <z>119.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>7</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>2.0</x>
        <y>0.0</y>
        <z>119.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>15</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>4.0</x>
        <y>0.0</y>
        <z>119.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>2</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>4.0</x>
        <y>0.0</y>
        <z>119.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>9</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>6.5</x>
        <y>0.0</y>
        <z>119.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>27</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.SimControl
    <width>280</width>
    <z>3</z>
    <height>160</height>
    <location_x>127</location_x>
    <location_y>6</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.Visualizer
    <plugin_config>
      <moterelations>true</moterelations>
      <skin>org.contikios.cooja.plugins.skins.IDVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.GridVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.TrafficVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.MoteTypeVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.DGRMVisualizerSkin</skin>
      <viewport>4.058697208303507 0.0 0.0 4.058697208303507 25.272727272727295 110.4151753758053</viewport>
    </plugin_config>
    <width>579</width>
    <z>2</z>
    <height>494</height>
    <location_x>1</location_x>
    <location_y>169</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.LogListener
    <plugin_config>
      <filter />
      <formatted_time />
      <coloring />
    </plugin_config>
    <width>579</width>
    <z>4</z>
    <height>494</height>
    <location_x>0</location_x>
    <location_y>662</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.RadioLogger
    <plugin_config>
      <split>305</split>
      <formatted_time />
      <showdups>false</showdups>
      <hidenodests>true</hidenodests>
      <analyzers name="6lowpan-pcap" />
    </plugin_config>
    <width>755</width>
    <z>5</z>
    <height>594</height>
    <location_x>579</location_x>
    <location_y>563</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script>importPackage(java.io);
importPackage(java.util);

TIMEOUT(3600000, log.log("Simulation finished\n"));
dataMessagesSent = new Array();
dataMessagesReceived = new Array();

topologyMessagesSent = new Array();
topologyMessagesReceived = new Array();

linkMessagesSent = new Array();
linkMessagesReceived = new Array();

msgStatsMessagesSent = new Array();
msgStatsMessagesReceived = new Array();

serverID = 26985;
nodeCount = 32;
totalDataPRR = 0;
totalDiagPRR = 0;

DEBUG = 0;

for(i = 0; i &lt;= nodeCount; i++) {
  dataMessagesReceived[i] = 0;
  topologyMessagesReceived[i] = 0;
  linkMessagesReceived[i] = 0;
  msgStatsMessagesReceived[i] = 0;

  dataMessagesSent[i] = 0;
  topologyMessagesSent[i] = 0;
  linkMessagesSent[i] = 0;
  msgStatsMessagesSent[i] = 0;
}

/* Remove nodes which did not make any connection to the gateway */
m = sim.getMotes(); /* Get Node instances of all the nodes in the simulation */


for(var i = 0; i &lt; m.length; i++) {
  if(m[i].getID() == 256) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  } else if(m[i].getID() == 273) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  } else if(m[i].getID() == 262) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  } else if(m[i].getID() == 20) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  } else if(m[i].getID() == 17) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  } else if(m[i].getID() == 3) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  } else if(m[i].getID() == 2) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  } else if(m[i].getID() == 7) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  } else if(m[i].getID() == 9) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  } else if(m[i].getID() == 11) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  } else if(m[i].getID() == 13) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  } else if(m[i].getID() == 15) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  } else if(m[i].getID() == 25) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  } else if(m[i].getID() == 26) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  } else if(m[i].getID() == 27) {
    if(DEBUG) { log.log("Removing node " + m[i].getID() +"\n"); }
    m[i].getSimulation().removeMote(m[i]);
  }
}


while(1) {
  YIELD();

  msgArray = msg.split(' ');
  if(msgArray[0].equals("#D") || msgArray[0].equals("#T") || msgArray[0].equals("#L") || msgArray[0].equals("#M")) {
    if(id != serverID) {
      if(id == 26985) {
        nodeID = 0;
      } else if(id == 26985) {
        nodeID = 1;
      } else if(id == 4) {
        nodeID = 2;
      } else if(id == 5) {
        nodeID = 3;
      } else if(id == 6) {
        nodeID = 4;
      } else if(id == 14) {
        nodeID = 5;
      } else if(id == 16) {
        nodeID = 6;
      } else if(id == 18) {
        nodeID = 7;
      } else if(id == 19) {
        nodeID = 8;
      } else if(id == 20) {
        nodeID = 9;
      } else if(id == 21) {
        nodeID = 10;
      } else if(id == 1) {
        nodeID = 11;
      } else if(id == 3) {
        nodeID = 12;
      } else if(id == 8) {
        nodeID = 13;
      } else if(id == 10) {
        nodeID = 14;
      } else if(id == 12) {
        nodeID = 15;
      } else if(id == 17) {
        nodeID = 16;
      } else if(id == 22) {
        nodeID = 17;
      } else if(id == 23) {
        nodeID = 18;
      } else if(id == 24) {
        nodeID = 19;
      } else if(id == 256) {
        nodeID = 20;
      } else if(id == 257) {
        nodeID = 21;
      } else if(id == 259) {
        nodeID = 22;
      } else if(id == 260) {
        nodeID = 23;
      } else if(id == 261) {
        nodeID = 24;
      } else if(id == 262) {
        nodeID = 25;
      } else if(id == 263) {
        nodeID = 26;
      } else if(id == 264) {
        nodeID = 27;
      } else if(id == 265) {
        nodeID = 28;
      } else if(id == 273) {
        nodeID = 29;
      } else if(id == 274) {
        nodeID = 30;
      } else if(id == 275) {
        nodeID = 31;
      } else if(id == 276) {
        nodeID = 32;
      }
      if(msgArray[0].equals("#D")) {
        dataMessagesSent[nodeID]++;
        if(DEBUG) log.log("nodeID " + nodeID + " D " + dataMessagesSent[nodeID] + "\n");
      } else if(msgArray[0].equals("#T")) {
        topologyMessagesSent[nodeID]++;
        if(DEBUG) log.log("nodeID " + nodeID + " T " + topologyMessagesSent[nodeID] +"\n");
      } else if(msgArray[0].equals("#L")) {
        linkMessagesSent[nodeID]++;
        if(DEBUG) log.log("nodeID " + nodeID + " L " + linkMessagesSent[nodeID] +"\n");
      } else if(msgArray[0].equals("#M")) {
        msgStatsMessagesSent[nodeID]++;
        if(DEBUG) log.log("nodeID " + nodeID + " M " + msgStatsMessagesSent[nodeID] +"\n");
      }
    } else {
      srcAddr = msgArray[6]

      if(srcAddr == 26985) {
        nodeID = 0;
      } else if(srcAddr == 26985) {
        nodeID = 1;
      } else if(srcAddr == 4) {
        nodeID = 2;
      } else if(srcAddr == 5) {
        nodeID = 3;
      } else if(srcAddr == 6) {
        nodeID = 4;
      } else if(srcAddr == 14) {
        nodeID = 5;
      } else if(srcAddr == 16) {
        nodeID = 6;
      } else if(srcAddr == 18) {
        nodeID = 7;
      } else if(srcAddr == 19) {
        nodeID = 8;
      } else if(srcAddr == 20) {
        nodeID = 9;
      } else if(srcAddr == 21) {
        nodeID = 10;
      } else if(srcAddr == 1) {
        nodeID = 11;
      } else if(srcAddr == 3) {
        nodeID = 12;
      } else if(srcAddr == 8) {
        nodeID = 13;
      } else if(srcAddr == 10) {
        nodeID = 14;
      } else if(srcAddr == 12) {
        nodeID = 15;
      } else if(srcAddr == 17) {
        nodeID = 16;
      } else if(srcAddr == 22) {
        nodeID = 17;
      } else if(srcAddr == 23) {
        nodeID = 18;
      } else if(srcAddr == 24) {
        nodeID = 19;
      } else if(srcAddr == 256) {
        nodeID = 20;
      } else if(srcAddr == 257) {
        nodeID = 21;
      } else if(srcAddr == 259) {
        nodeID = 22;
      } else if(srcAddr == 260) {
        nodeID = 23;
      } else if(srcAddr == 261) {
        nodeID = 24;
      } else if(srcAddr == 262) {
        nodeID = 25;
      } else if(srcAddr == 263) {
        nodeID = 26;
      } else if(srcAddr == 264) {
        nodeID = 27;
      } else if(srcAddr == 265) {
        nodeID = 28;
      } else if(srcAddr == 273) {
        nodeID = 29;
      } else if(srcAddr == 274) {
        nodeID = 30;
      } else if(srcAddr == 275) {
        nodeID = 31;
      } else if(srcAddr == 276) {
        nodeID = 32;
      }

      if(msgArray[0].equals("#D")) {
        dataMessagesReceived[nodeID]++;
        if(DEBUG) log.log("nodeID " + nodeID + " D " + dataMessagesReceived[nodeID] + "\n");
      } else if(msgArray[0].equals("#T")) {
        topologyMessagesReceived[nodeID]++;
        if(DEBUG) log.log("nodeID " + nodeID + " T " + topologyMessagesReceived[nodeID] +"\n");
      } else if(msgArray[0].equals("#L")) {
        linkMessagesReceived[nodeID]++;
        if(DEBUG) log.log("nodeID " + nodeID + " L " + linkMessagesReceived[nodeID] +"\n");
      } else if(msgArray[0].equals("#M")) {
        msgStatsMessagesReceived[nodeID]++;
        if(DEBUG) log.log("nodeID " + nodeID + " M " + msgStatsMessagesReceived[nodeID] +"\n");
      }

      totalDataPRR = totalDiagPRR = 0;
      if(dataMessagesSent[nodeID] != 0) {
        totalDataPRR = dataMessagesReceived[nodeID] / dataMessagesSent[nodeID];
      }

      log.log("id " + srcAddr + " PRR[DATA] " + totalDataPRR + "\n");

      totalDiagSent = topologyMessagesSent[nodeID] + linkMessagesSent[nodeID] + msgStatsMessagesSent[nodeID];
      totalDiagRecv = topologyMessagesReceived[nodeID] + linkMessagesReceived[nodeID] + msgStatsMessagesReceived[nodeID];
      if(totalDiagSent != 0) {
        totalDiagPRR = totalDiagRecv / totalDiagSent;
      }

      log.log("id " + srcAddr + " PRR[DIAG] " + totalDiagPRR + "\n\n");
    }
  }
}
log.testOK(); /* Report test success and quit */
//log.testFailed(); /* Report test failure and quit */</script>
      <active>true</active>
    </plugin_config>
    <width>754</width>
    <z>0</z>
    <height>564</height>
    <location_x>580</location_x>
    <location_y>0</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.DGRMConfigurator
    <width>583</width>
    <z>1</z>
    <height>1155</height>
    <location_x>1334</location_x>
    <location_y>0</location_y>
  </plugin>
</simconf>

